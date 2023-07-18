// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../core/LayerCake.sol";
import "../core/LayerCakeTools.sol";

contract BandwidthProviderController is LayerCakeTools {
    address public controller;

    constructor(address _controller) {
        controller = _controller;
    }

    modifier controllerOnly() {
        if (controller != address(0)) {
            require(msg.sender == controller, "CO1");
        }
        _;
    }

    function updateController(address _controller) external controllerOnly {
        controller = _controller;
    }

    function executeStandardOperations(LayerCake _layercake, ExecutionProof memory _executionProof)
        external
        controllerOnly
    {
        _layercake.executeStandardOperations(_executionProof);
    }

    function executeCancelStandardOperations(LayerCake _layercake, ExecutionProof memory _executionProof)
        external
        controllerOnly
    {
        _layercake.executeCancelStandardOperations(_executionProof);
    }

    function storeNegationOperations(IERC20 _token, LayerCake _layercake, Operations memory _operations)
        external
        controllerOnly
    {
        _token.approve(address(_layercake), _operations.amount);
        _layercake.storeNegationOperations(_operations);
    }

    function executeNegationOperations(
        LayerCake _layercake,
        ExecutionProof memory _negationExecutionProof,
        ExecutionProof memory _invalidExecutionProof
    ) external controllerOnly {
        _layercake.executeNegationOperations(_negationExecutionProof, _invalidExecutionProof);
    }

    function addBandwidth(IERC20 _token, LayerCake _layercake, uint256 _depositedAmount, uint256 _bandwidthAmount)
        external
        controllerOnly
    {
        _token.approve(address(_layercake), _depositedAmount);
        _layercake.addBandwidth(_bandwidthAmount);
    }

    function removeBandwidth(LayerCake _layercake, uint256 _bandwidthAmount) external controllerOnly {
        _layercake.subtractBandwidth(_bandwidthAmount);
    }
}
