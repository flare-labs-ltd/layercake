// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol";
import "./LayerCakeDeployTools.sol";

contract LayerCakeDestinationDeploy is LayerCakeDeployTools, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bool public deployed;
    address public immutable deployer;
    bytes32 public immutable verificationHash;
    uint256 public immutable depositedAmount;
    bytes32 public computedVerificationHash;

    IERC20 public immutable destinationToken;

    EnumerableMap.AddressToUintMap internal deposits;

    constructor(
        address cLayerCakeAddress,
        address cDestinationTokenAddress,
        bytes32 cVerificationHash,
        uint256 cDepositCap,
        uint256 cDepositedAmount
    ) {
        deployer = msg.sender;
        verificationHash = cVerificationHash;
        destinationToken = IERC20(cDestinationTokenAddress);
        require(destinationToken.balanceOf(cLayerCakeAddress) == cDepositCap - cDepositedAmount);
        depositedAmount = cDepositedAmount;
    }

    modifier preDeployOnly() {
        require(!deployed, "PrDO1");
        _;
    }

    modifier postDeployOnly() {
        require(deployed, "PoDO1");
        _;
    }

    modifier deployerOnly() {
        require(msg.sender == deployer, "DO1");
        _;
    }

    function setBalanceChange(BalanceChange memory balanceChange) external preDeployOnly deployerOnly {
        require(destinationToken.balanceOf(address(this)) == depositedAmount);
        if (balanceChange.deposit) {
            (, uint256 currentBalance) = EnumerableMap.tryGet(deposits, balanceChange.sender);
            EnumerableMap.set(deposits, balanceChange.sender, currentBalance + balanceChange.amount);
        } else {
            uint256 currentBalance = EnumerableMap.get(deposits, balanceChange.sender);
            EnumerableMap.set(deposits, balanceChange.sender, currentBalance - balanceChange.amount);
        }
        computedVerificationHash = getVerificationHashUpdate(computedVerificationHash, balanceChange);
        emit BalanceChangeEvent(balanceChange);
        if (computedVerificationHash == verificationHash) {
            deployed = true;
            return;
        }
    }

    function withdraw() external postDeployOnly nonReentrant {
        uint256 currentBalance = EnumerableMap.get(deposits, msg.sender);
        require(currentBalance > 0, "W1");
        EnumerableMap.remove(deposits, msg.sender);
        destinationToken.safeTransfer(msg.sender, currentBalance);
    }
}
