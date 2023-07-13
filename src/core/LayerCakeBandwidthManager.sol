// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

contract LayerCakeBandwidthManager {
    struct BandwidthProvider {
        bool negated;
        uint256 startTime;
        uint256 timeLastActive;
        uint256 timeLastNegated;
        uint256 negationCounter;
        bytes32 prevInvalidExecutionProofId;
        uint256 currentTotalBandwidth;
        uint256 currentUsedBandwidth;
    }

    event BpSuggestedFeeUpdated(address bandwidthProvider, uint256 amount);

    address public immutable layerCakeContract;
    uint256 public immutable reorgAssumption;
    uint256 public immutable bandwidthPeriod;
    uint256 public immutable bandwidthDepositDenominator;
    uint256 public immutable defaultNegationCost;
    uint256 public immutable negationCounterReset;
    uint256 public immutable negationCostResetPeriod;
    uint256 public immutable negationRewardDenominator;

    constructor(
        address _layerCakeContract,
        uint256 _reorgAssumption,
        uint256 _bandwidthDepositDenominator,
        uint256 _defaultNegationCost
    ) {
        layerCakeContract = _layerCakeContract;
        reorgAssumption = _reorgAssumption;
        bandwidthPeriod = 2 * reorgAssumption;
        bandwidthDepositDenominator = _bandwidthDepositDenominator;
        defaultNegationCost = _defaultNegationCost;
        negationCounterReset = bandwidthDepositDenominator;
        negationCostResetPeriod = negationCounterReset * bandwidthPeriod;
        negationRewardDenominator = 2 * bandwidthDepositDenominator;
    }

    mapping(address => BandwidthProvider) public bpInfo;
    mapping(address => uint256) public bpSuggestedFee;

    modifier layerCakeOnly() {
        require(msg.sender == layerCakeContract, "LCO1");
        _;
    }

    // ==================
    // BP parameter functions
    // ==================

    function proveBandwidth(address _bandwidthProvider, uint256 _amount) external layerCakeOnly {
        proveBandwidthPrivate(_bandwidthProvider, _amount, true);
    }

    function proveBandwidthPrivate(address _bandwidthProvider, uint256 _amount, bool _addToUsedBandwidth) private {
        // Prove that the bandwidth provider calling this function has free bandwidth >= _amount
        BandwidthProvider memory bp = bpInfo[_bandwidthProvider];
        require(!bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod, "PBP1");
        if ((block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod) {
            // New bandwidth period
            if (_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth) {
                require(block.timestamp - bp.timeLastActive > reorgAssumption, "PBP2");
            }
            bp.currentUsedBandwidth = 0;
        }
        require(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount, "PBP3");
        bp.timeLastActive = block.timestamp;
        bp.negationCounter = 0;
        if (_addToUsedBandwidth) {
            bp.currentUsedBandwidth = bp.currentUsedBandwidth + _amount;
        }
        bpInfo[_bandwidthProvider] = bp;
    }

    function addBandwidth(address _bandwidthProvider, uint256 _bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 _depositedAmount)
    {
        BandwidthProvider memory bp = bpInfo[_bandwidthProvider];
        bp.timeLastActive = block.timestamp;
        require(!bp.negated, "AB1");
        if (bp.startTime == 0) {
            // This is a new BP
            bp.startTime = bp.timeLastActive;
        }
        // Require that the added bandwidth is divisible by BANDWIDTH_DEPOSIT_DENOMINATOR without a remainder
        require(_bandwidthAmount % bandwidthDepositDenominator == 0, "AB2");
        _depositedAmount = _bandwidthAmount + (_bandwidthAmount / bandwidthDepositDenominator);
        bp.currentTotalBandwidth = bp.currentTotalBandwidth + _bandwidthAmount;
        bp.negationCounter = 0;
        bpInfo[_bandwidthProvider] = bp;
    }

    function subtractBandwidth(address _bandwidthProvider, uint256 _bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 _withdrawnAmount)
    {
        proveBandwidthPrivate(_bandwidthProvider, _bandwidthAmount, false);
        BandwidthProvider memory bp = bpInfo[_bandwidthProvider];
        require(_bandwidthAmount <= bp.currentTotalBandwidth, "SB1");
        // Require that the subtracted bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(_bandwidthAmount % bandwidthDepositDenominator == 0, "SB2");
        _withdrawnAmount = _bandwidthAmount + (_bandwidthAmount / bandwidthDepositDenominator);
        bp.currentTotalBandwidth = bp.currentTotalBandwidth - _bandwidthAmount;
        bpInfo[_bandwidthProvider] = bp;
    }

    function negateBp(
        address _bandwidthProvider,
        uint256 _depositedAmount,
        uint256 _fee,
        bool _initialNegation,
        bytes32 _invalidExecutionProofId
    ) external layerCakeOnly returns (uint256 executionAmount) {
        BandwidthProvider memory bp = bpInfo[_bandwidthProvider];
        if (bp.negated && bp.prevInvalidExecutionProofId != 0x0) {
            require(bp.prevInvalidExecutionProofId == _invalidExecutionProofId, "NB1");
        }
        if (!bp.negated) {
            if (
                bp.timeLastNegated > bp.timeLastActive && block.timestamp - bp.timeLastActive >= negationCostResetPeriod
                    && bp.negationCounter > negationCounterReset
                    && block.timestamp - bp.timeLastNegated < 2 * bandwidthPeriod
            ) {
                require(_depositedAmount - _fee == bp.currentTotalBandwidth, "NB2");
                bp.negationCounter = 0;
            } else {
                require(_depositedAmount - _fee == defaultNegationCost, "NB3");
            }
            bp.negationCounter = bp.negationCounter + 1;
            executionAmount = _depositedAmount + (bp.currentTotalBandwidth / negationRewardDenominator);
        } else {
            require(_depositedAmount - _fee == bp.currentTotalBandwidth, "NB4");
            executionAmount = _depositedAmount + defaultNegationCost;
        }
        bp.negated = !bp.negated;
        require(_initialNegation == bp.negated, "NB5");
        bp.timeLastNegated = block.timestamp;
        bp.prevInvalidExecutionProofId = _invalidExecutionProofId;
        bpInfo[_bandwidthProvider] = bp;
        return executionAmount;
    }

    function updateBpSuggestedFee(uint256 _amount) external {
        BandwidthProvider memory bp = bpInfo[msg.sender];
        require(bp.currentTotalBandwidth > 0, "UBF1");
        bpSuggestedFee[msg.sender] = _amount;
        emit BpSuggestedFeeUpdated(msg.sender, _amount);
    }
}
