// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

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
    uint256 public immutable negationRewardDenominator;

    constructor(
        address cLayerCakeContract,
        uint256 cReorgAssumption,
        uint256 cBandwidthDepositDenominator,
        uint256 cDefaultNegationCost
    ) {
        require(cLayerCakeContract != address(0), "LCBMC1");
        require(cReorgAssumption > 0, "LCBMC2");
        require(cBandwidthDepositDenominator > 0, "LCBMC3");
        require(cDefaultNegationCost > 0, "LCBMC4");
        layerCakeContract = cLayerCakeContract;
        reorgAssumption = cReorgAssumption;
        bandwidthPeriod = 2 * reorgAssumption;
        bandwidthDepositDenominator = cBandwidthDepositDenominator;
        defaultNegationCost = cDefaultNegationCost;
        negationRewardDenominator = 10 * bandwidthDepositDenominator;
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

    function proveBandwidth(address bandwidthProvider, uint256 amount) external layerCakeOnly {
        _proveBandwidthPrivate(bandwidthProvider, amount, true);
    }

    function _proveBandwidthPrivate(address bandwidthProvider, uint256 amount, bool addToUsedBandwidth) private {
        // Prove that the bandwidth provider calling this function has free bandwidth >= amount
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        require(!bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod, "PBP1");
        if ((block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod) {
            // New bandwidth period
            if (amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth) {
                require(block.timestamp - bp.timeLastActive > reorgAssumption, "PBP2");
            }
            bp.currentUsedBandwidth = 0;
        }
        require(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount, "PBP3");
        bp.timeLastActive = block.timestamp;
        bp.negationCounter = 0;
        if (addToUsedBandwidth) {
            bp.currentUsedBandwidth = bp.currentUsedBandwidth + amount;
        }
        bpInfo[bandwidthProvider] = bp;
    }

    function addBandwidth(address bandwidthProvider, uint256 bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 depositedAmount)
    {
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        bp.timeLastActive = block.timestamp;
        require(!bp.negated, "AB1");
        if (bp.startTime == 0) {
            // This is a new BP
            bp.startTime = bp.timeLastActive;
        }
        // Require that the added bandwidth is divisible by BANDWIDTHDEPOSITDENOMINATOR without a remainder
        require(bandwidthAmount % bandwidthDepositDenominator == 0, "AB2");
        depositedAmount = bandwidthAmount + (bandwidthAmount / bandwidthDepositDenominator);
        bp.currentTotalBandwidth = bp.currentTotalBandwidth + bandwidthAmount;
        bp.negationCounter = 0;
        bpInfo[bandwidthProvider] = bp;
    }

    function subtractBandwidth(address bandwidthProvider, uint256 bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 withdrawnAmount)
    {
        _proveBandwidthPrivate(bandwidthProvider, bandwidthAmount, false);
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        require(bandwidthAmount <= bp.currentTotalBandwidth, "SB1");
        // Require that the subtracted bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(bandwidthAmount % bandwidthDepositDenominator == 0, "SB2");
        withdrawnAmount = bandwidthAmount + (bandwidthAmount / bandwidthDepositDenominator);
        bp.currentTotalBandwidth = bp.currentTotalBandwidth - bandwidthAmount;
        bpInfo[bandwidthProvider] = bp;
    }

    function negateBp(
        address bandwidthProvider,
        uint256 depositedAmount,
        uint256 fee,
        bool initialNegation,
        bytes32 invalidExecutionProofId
    ) external layerCakeOnly returns (uint256 executionAmount) {
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        if (bp.negated && bp.prevInvalidExecutionProofId != 0x0) {
            require(bp.prevInvalidExecutionProofId == invalidExecutionProofId, "NB1");
        }
        if (!bp.negated) {
            if (bp.negationCounter > 1) {
                require(depositedAmount - fee == bp.currentTotalBandwidth, "NB2");
                bp.negationCounter = 0;
            } else {
                require(depositedAmount - fee == defaultNegationCost, "NB3");
            }
            bp.negationCounter = bp.negationCounter + 1;
            executionAmount = depositedAmount + (bp.currentTotalBandwidth / negationRewardDenominator);
        } else {
            require(depositedAmount - fee == bp.currentTotalBandwidth, "NB4");
            executionAmount = depositedAmount + defaultNegationCost;
        }
        bp.negated = !bp.negated;
        require(initialNegation == bp.negated, "NB5");
        bp.timeLastNegated = block.timestamp;
        bp.prevInvalidExecutionProofId = invalidExecutionProofId;
        bpInfo[bandwidthProvider] = bp;
        return executionAmount;
    }

    function updateBpSuggestedFee(uint256 amount) external {
        BandwidthProvider memory bp = bpInfo[msg.sender];
        require(bp.currentTotalBandwidth > 0, "UBF1");
        bpSuggestedFee[msg.sender] = amount;
        emit BpSuggestedFeeUpdated(msg.sender, amount);
    }
}
