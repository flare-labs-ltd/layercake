// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../core/LayerCakeOriginDeploy.sol";
import "../core/LayerCakeDestinationDeploy.sol";
import "../core/LayerCake.sol";
import "../core/LayerCakeTools.sol";

contract UserController is LayerCakeTools {
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

    function storeStandardOperations(IERC20 _token, LayerCake _layercake, Operations memory _operations)
        external
        controllerOnly
    {
        _token.approve(
            address(_layercake), _operations.amount + _operations.amount / _layercake.forwardedFeeDenominator()
        );
        _layercake.storeStandardOperations(_operations);
    }

    function storeNegationOperations(IERC20 _token, LayerCake _layercake, Operations memory _operations)
        external
        controllerOnly
    {
        _token.approve(address(_layercake), _operations.amount);
        _layercake.storeNegationOperations(_operations);
    }

    function cancelStandardOperations(LayerCake _layercake, Operations memory _operations) external controllerOnly {
        _layercake.cancelStandardOperations(_operations);
    }

    function depositToLayerCakeOriginDeploy(
        IERC20 _token,
        LayerCakeOriginDeploy _layerCakeOriginDeploy,
        uint256 _amount
    ) external controllerOnly {
        _token.approve(address(_layerCakeOriginDeploy), _amount);
        _layerCakeOriginDeploy.deposit(_amount);
    }

    function withdrawFromLayerCakeOriginDeploy(LayerCakeOriginDeploy _layerCakeOriginDeploy, uint256 _amount)
        external
        controllerOnly
    {
        _layerCakeOriginDeploy.withdraw(_amount);
    }

    function withdrawFromLayerCakeDestinationDeploy(LayerCakeDestinationDeploy _layerCakeDestinationDeploy)
        external
        controllerOnly
    {
        _layerCakeDestinationDeploy.withdraw();
    }
}
