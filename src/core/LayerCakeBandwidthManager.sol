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

    uint256 public constant MAX_BANDWIDTH_MULTIPLE = 1000;
    uint256 public constant NEGATION_REWARD_MULTIPLE = 10;

    address public immutable layerCakeContract;
    uint256 public immutable reorgAssumption;
    uint256 public immutable bandwidthPeriod;
    uint256 public immutable bandwidthDepositDenominator;
    uint256 public immutable minBandwidth;

    constructor(
        address cLayerCakeContract,
        uint256 cReorgAssumption,
        uint256 cBandwidthDepositDenominator,
        uint256 cMinBandwidth
    ) {
        require(cLayerCakeContract != address(0), "LCBMC1");
        require(cReorgAssumption > 0, "LCBMC2");
        require(cBandwidthDepositDenominator > 0, "LCBMC3");
        require(cMinBandwidth > 0, "LCBMC4");
        require(cMinBandwidth > MAX_BANDWIDTH_MULTIPLE, "LCBMC5");
        layerCakeContract = cLayerCakeContract;
        reorgAssumption = cReorgAssumption;
        bandwidthPeriod = 2 * cReorgAssumption;
        bandwidthDepositDenominator = cBandwidthDepositDenominator;
        minBandwidth = cMinBandwidth;
    }

    mapping(address => BandwidthProvider) public bpInfo;

    modifier layerCakeOnly() {
        require(msg.sender == layerCakeContract, "LCO1");
        _;
    }

    // ==================
    // BP parameter functions
    // ==================

    function proveBandwidth(address bandwidthProvider, uint256 amount) external layerCakeOnly {
        _proveBandwidth(bandwidthProvider, amount, 0);
    }

    function _proveBandwidth(address bandwidthProvider, uint256 amount, uint256 setting) private {
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        require(!bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod, "PB1");
        require(block.timestamp >= bp.timeLastActive, "PB2");
        bp.negationCounter = 0;
        if (setting != 1) {
            if (
                (block.timestamp - bp.startTime) / bandwidthPeriod
                    > (bp.timeLastActive - bp.startTime) / bandwidthPeriod
            ) {
                // New bandwidth period
                if (
                    bp.currentUsedBandwidth > bp.currentTotalBandwidth
                        || amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth
                ) {
                    require(block.timestamp - bp.timeLastActive > reorgAssumption, "PB3");
                }
                bp.currentUsedBandwidth = 0;
            }
            // Prove that the bandwidth provider calling this function has free bandwidth >= amount
            require(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount, "PB4");
        } else {
            if (bp.startTime == 0) {
                // This is a new BP
                bp.startTime = block.timestamp;
            }
            bp.currentTotalBandwidth = bp.currentTotalBandwidth + amount;
            // Require that the added bandwidth is greater than or equal to the default negation cost
            require(bp.currentTotalBandwidth >= minBandwidth, "PB5");
            require(bp.currentTotalBandwidth <= minBandwidth * MAX_BANDWIDTH_MULTIPLE, "PB6");
        }
        if (setting <= 1) {
            bp.timeLastActive = block.timestamp + setting * bandwidthPeriod;
            bp.currentUsedBandwidth = bp.currentUsedBandwidth + amount;
        } else {
            bp.currentTotalBandwidth = bp.currentTotalBandwidth - amount;
            if (bp.currentTotalBandwidth > 0) {
                require(bp.currentTotalBandwidth >= minBandwidth, "PB7");
            }
        }
        bpInfo[bandwidthProvider] = bp;
    }

    function addBandwidth(address bandwidthProvider, uint256 bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 depositedAmount)
    {
        // Require that the added bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(bandwidthAmount % bandwidthDepositDenominator == 0, "AB1");
        depositedAmount = bandwidthAmount + (bandwidthAmount / bandwidthDepositDenominator);
        _proveBandwidth(bandwidthProvider, bandwidthAmount, 1);
    }

    function subtractBandwidth(address bandwidthProvider, uint256 bandwidthAmount)
        external
        layerCakeOnly
        returns (uint256 withdrawnAmount)
    {
        // Require that the subtracted bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(bandwidthAmount % bandwidthDepositDenominator == 0, "SB1");
        withdrawnAmount = bandwidthAmount + (bandwidthAmount / bandwidthDepositDenominator);
        _proveBandwidth(bandwidthProvider, bandwidthAmount, 2);
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
                require(depositedAmount - fee == bp.currentTotalBandwidth / MAX_BANDWIDTH_MULTIPLE, "NB3");
            }
            bp.negationCounter = bp.negationCounter + 1;
            executionAmount =
                depositedAmount + (bp.currentTotalBandwidth / (NEGATION_REWARD_MULTIPLE * bandwidthDepositDenominator));
        } else {
            require(depositedAmount - fee == bp.currentTotalBandwidth, "NB4");
            executionAmount = depositedAmount + bp.currentTotalBandwidth / MAX_BANDWIDTH_MULTIPLE;
        }
        bp.negated = !bp.negated;
        require(initialNegation == bp.negated, "NB5");
        bp.timeLastNegated = block.timestamp;
        bp.prevInvalidExecutionProofId = invalidExecutionProofId;
        bpInfo[bandwidthProvider] = bp;
        return executionAmount;
    }
}
