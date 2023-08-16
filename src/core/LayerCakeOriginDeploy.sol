// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol";
import "./LayerCakeDeployTools.sol";

contract LayerCakeOriginDeploy is LayerCakeDeployTools, ReentrancyGuard {
    address public immutable layerCakeAddress;
    uint256 public immutable deployTime;
    IERC20 public immutable originToken;
    uint256 public immutable depositCap;

    bool public deployed;
    uint256 public depositedAmount;
    EnumerableMap.AddressToUintMap internal deposits;
    bytes32 public verificationHash;

    constructor(address cLayerCakeAddress, address cTokenAddress, uint256 cDepositWindow, uint256 cDepositCap) {
        require(cLayerCakeAddress != address(0), "LCOD1");
        layerCakeAddress = cLayerCakeAddress;
        originToken = IERC20(cTokenAddress);
        deployTime = block.timestamp + cDepositWindow;
        depositCap = cDepositCap;
    }

    modifier preDeployOnly() {
        require(!deployed, "PDO1");
        _;
    }

    function deposit(uint256 amount, address withdrawalAddress) external preDeployOnly nonReentrant {
        require(amount > 0, "D1");
        (, uint256 currentBalance) = EnumerableMap.tryGet(deposits, withdrawalAddress);
        EnumerableMap.set(deposits, withdrawalAddress, currentBalance + amount);
        BalanceChange memory balanceChange = BalanceChange(true, withdrawalAddress, amount);
        verificationHash = getVerificationHashUpdate(verificationHash, balanceChange);
        depositedAmount = depositedAmount + amount;
        emit BalanceChangeEvent(balanceChange);
        require(originToken.transferFrom(msg.sender, address(this), amount), "D2");
        require(originToken.balanceOf(address(this)) <= depositCap, "D3");
    }

    function withdraw(uint256 amount) external preDeployOnly nonReentrant {
        require(amount > 0, "W1");
        uint256 currentBalance = EnumerableMap.get(deposits, msg.sender);
        EnumerableMap.set(deposits, msg.sender, currentBalance - amount);
        BalanceChange memory balanceChange = BalanceChange(false, msg.sender, amount);
        verificationHash = getVerificationHashUpdate(verificationHash, balanceChange);
        depositedAmount = depositedAmount - amount;
        emit BalanceChangeEvent(balanceChange);
        require(originToken.transfer(msg.sender, amount), "W2");
    }

    function transferDepositsToLayerCake() external preDeployOnly nonReentrant {
        require(block.timestamp >= deployTime, "DLC1");
        require(verificationHash != bytes32(0), "DLC2");
        deployed = true;
        require(originToken.transfer(layerCakeAddress, originToken.balanceOf(address(this))), "DLC3");
    }
}
