// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol";
import "./LayerCakeDeployTools.sol";
import "./LayerCakeTransportedToken.sol";

contract LayerCakeDestinationDeploy is LayerCakeDeployTools, ReentrancyGuard {
    bool public deployed;
    address public immutable deployer;
    bytes32 public immutable verificationHash;
    uint256 public immutable depositedAmount;
    bytes32 public computedVerificationHash;

    LayerCakeTransportedToken public destinationToken;

    EnumerableMap.AddressToUintMap internal _deposits;

    constructor(
        address _layerCakeAddress,
        address _destinationTokenAddress,
        bytes32 _verificationHash,
        uint256 _depositCap,
        uint256 _depositedAmount
    ) {
        deployer = msg.sender;
        verificationHash = _verificationHash;
        destinationToken = LayerCakeTransportedToken(_destinationTokenAddress);
        require(destinationToken.balanceOf(_layerCakeAddress) == _depositCap - _depositedAmount);
        depositedAmount = _depositedAmount;
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

    function setBalanceChange(BalanceChange memory _balanceChange) external preDeployOnly deployerOnly nonReentrant {
        require(destinationToken.balanceOf(address(this)) == depositedAmount);
        if (_balanceChange.deposit) {
            (, uint256 currentBalance) = EnumerableMap.tryGet(_deposits, _balanceChange.sender);
            EnumerableMap.set(_deposits, _balanceChange.sender, currentBalance + _balanceChange.amount);
        } else {
            uint256 currentBalance = EnumerableMap.get(_deposits, _balanceChange.sender);
            EnumerableMap.set(_deposits, _balanceChange.sender, currentBalance - _balanceChange.amount);
        }
        computedVerificationHash = getVerificationHashUpdate(computedVerificationHash, _balanceChange);
        emit BalanceChangeEvent(_balanceChange);
        if (computedVerificationHash == verificationHash) {
            deployed = true;
            return;
        }
    }

    function withdraw() external postDeployOnly nonReentrant {
        uint256 currentBalance = EnumerableMap.get(_deposits, msg.sender);
        require(currentBalance > 0, "W1");
        EnumerableMap.remove(_deposits, msg.sender);
        destinationToken.transfer(msg.sender, currentBalance);
    }
}
