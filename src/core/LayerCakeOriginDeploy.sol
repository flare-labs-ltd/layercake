// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol";
import "./LayerCakeDeployTools.sol";

contract LayerCakeOriginDeploy is LayerCakeDeployTools, ReentrancyGuard {
    address public immutable layerCakeAddress;
    uint256 public immutable deployTime;
    IERC20 public originToken;
    uint256 public immutable depositCap;

    bool public deployed;
    uint256 public depositedAmount;
    EnumerableMap.AddressToUintMap internal _deposits;
    bytes32 public verificationHash;

    constructor(address _layerCakeAddress, address _tokenAddress, uint256 _depositWindow, uint256 _depositCap) {
        layerCakeAddress = _layerCakeAddress;
        originToken = IERC20(_tokenAddress);
        deployTime = block.timestamp + _depositWindow;
        depositCap = _depositCap;
    }

    modifier preDeployOnly() {
        require(!deployed, "PDO1");
        _;
    }

    function deposit(uint256 _amount) external preDeployOnly nonReentrant {
        require(_amount > 0, "D1");
        originToken.transferFrom(msg.sender, address(this), _amount);
        require(originToken.balanceOf(address(this)) <= depositCap, "D2");
        (, uint256 currentBalance) = EnumerableMap.tryGet(_deposits, msg.sender);
        EnumerableMap.set(_deposits, msg.sender, currentBalance + _amount);
        BalanceChange memory balanceChange = BalanceChange(true, msg.sender, _amount);
        verificationHash = getVerificationHashUpdate(verificationHash, balanceChange);
        depositedAmount = depositedAmount + _amount;
        emit BalanceChangeEvent(balanceChange);
    }

    function withdraw(uint256 _amount) external preDeployOnly nonReentrant {
        require(_amount > 0, "W1");
        uint256 currentBalance = EnumerableMap.get(_deposits, msg.sender);
        EnumerableMap.set(_deposits, msg.sender, currentBalance - _amount);
        originToken.transfer(msg.sender, _amount);
        BalanceChange memory balanceChange = BalanceChange(false, msg.sender, _amount);
        verificationHash = getVerificationHashUpdate(verificationHash, balanceChange);
        depositedAmount = depositedAmount - _amount;
        emit BalanceChangeEvent(balanceChange);
    }

    function transferDepositsToLayerCake() external preDeployOnly nonReentrant {
        require(block.timestamp >= deployTime, "DLC1");
        require(verificationHash != bytes32(0), "DLC2");
        deployed = true;
        originToken.transfer(layerCakeAddress, originToken.balanceOf(address(this)));
    }
}
