// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

// Private keys convention using vm.addr()
// 1000+: Origin-chain bandwidth providers
// 2000+: Destination-chain bandwidth providers
// 3000+: Origin-chain users
// 4000+: Destination-chain users

import "../../lib/forge-std/src/Test.sol";

// Testing contracts
import "./UserController.sol";
import "./BandwidthProviderController.sol";
import "./VerifiedSetupController.sol";
import "./Counter.sol";

contract StandardOperationsController is Test, LayerCakeTools {
    VerifiedSetupController public c;

    constructor(VerifiedSetupController _c) {
        c = _c;
    }

    function fuzzStoreStandardOperations(uint16 _amount) public {
        vm.warp(c.deployTimestamp());
        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());

        uint16 fee = 1000;
        if (_amount < 2 * fee) {
            _amount = _amount + 2 * fee;
        }
        c.originToken().transfer(originUser1, _amount + _amount / c.originLayercake().forwardedFeeDenominator());
        assertEq(
            c.originToken().balanceOf(originUser1), _amount + _amount / c.originLayercake().forwardedFeeDenominator()
        );

        address destinationUser1 = address(vm.addr(4000));
        Operations memory standardOperations = Operations(
            1, _amount, fee, originUser1, destinationUser1, block.timestamp, 0, "", false, 0, address(0), false, ""
        );

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + _amount);
    }

    function fuzzStandardOperationsTransferOnly(uint256 _amount) public {
        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());
        uint16 fee = 1000;
        if (_amount < 2 * fee) {
            _amount = _amount + 2 * fee;
        }
        c.originToken().transfer(originUser1, _amount + _amount / c.originLayercake().forwardedFeeDenominator());
        assertEq(
            c.originToken().balanceOf(originUser1), _amount + _amount / c.originLayercake().forwardedFeeDenominator()
        );

        // Standard operations transfering 10000 testWETH with a fee of 10 testWETH
        Operations memory standardOperations = Operations(
            1,
            _amount,
            fee,
            originUser1,
            address(vm.addr(4000)),
            block.timestamp,
            0,
            "",
            false,
            0,
            address(0),
            false,
            ""
        );

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + _amount);

        // Execute the operations
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        ExecutionProof memory executionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(), executionProof);
        assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))), _amount - fee);
    }

    function standardOperationsTransferOnly(uint256 _nonce) public {
        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());
        // Send user 10000 testWETH
        uint256 amount = 10000;
        c.originToken().transfer(originUser1, amount + amount / c.originLayercake().forwardedFeeDenominator());
        assertEq(
            c.originToken().balanceOf(originUser1), amount + amount / c.originLayercake().forwardedFeeDenominator()
        );

        // Standard operations transfering 10000 testWETH with a fee of 10 testWETH
        address destinationUser1 = address(vm.addr(4000));
        Operations memory standardOperations = Operations(
            _nonce, amount, 10, originUser1, destinationUser1, block.timestamp, 0, "", false, 0, address(0), false, ""
        );

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + amount);

        // Execute the operations
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        ExecutionProof memory executionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(), executionProof);
        assertEq(c.destinationToken().balanceOf(destinationUser1), _nonce * 9990);
    }

    function standardOperationsTransferWithCalldata(uint256 _nonce) public {
        Counter counterTester = new Counter();
        assertEq(counterTester.counter(), 0);

        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());
        c.originToken().transfer(originUser1, 10000 + 10000 / c.originLayercake().forwardedFeeDenominator());

        // Standard operations with calldata attached
        Operations memory standardOperations = Operations(
            _nonce,
            10000,
            10,
            originUser1,
            address(counterTester),
            block.timestamp,
            100000,
            hex"6abbb3b4000000000000000000000000000000000000000000000000000000000000000f",
            false,
            0,
            address(0),
            false,
            ""
        );

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + 10000);

        // Execute the operations
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        ExecutionProof memory executionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(), executionProof);
        assertEq(c.destinationToken().balanceOf(address(counterTester)), 9990);
        assertEq(counterTester.counter(), 15);
    }

    function standardOperationsTransferOnlyPartial(uint256 _nonce, uint256 _partialDenominator) public {
        address originUser1 = address(vm.addr(3000));
        uint256 amount = 10000;
        // Standard operations transfering 10000 testWETH with a fee of 10 testWETH
        Operations memory standardOperations = Operations(
            1, amount, 10, originUser1, address(vm.addr(4000)), block.timestamp, 0, "", false, 0, address(0), false, ""
        );

        if (_nonce == 1) {
            vm.etch(originUser1, c.userControllerCode());
            // Send user 10000 testWETH
            c.originToken().transfer(originUser1, amount + amount / c.originLayercake().forwardedFeeDenominator());
            assertEq(
                c.originToken().balanceOf(originUser1), amount + amount / c.originLayercake().forwardedFeeDenominator()
            );

            // Store the operations
            uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
            UserController(originUser1).storeStandardOperations(
                c.originToken(), c.originLayercake(), standardOperations
            );
            assertEq(c.originToken().balanceOf(originUser1), 0);
            assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + amount);
        }

        // Execute the operations partially across 100 bandwidth providers
        uint256 destinationBpPk1 = 2000 + _nonce - 1;
        address destinationBp1 = vm.addr(destinationBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        (uint8 v, bytes32 r, bytes32 s) =
            vm.sign(destinationBpPk1, keccak256(abi.encodePacked(c.prefix(), executionId)));
        ExecutionProof memory executionProof =
            ExecutionProof(standardOperations, standardOperations.amount / _partialDenominator, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(), executionProof);
        if (_nonce == _partialDenominator) {
            assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))), 9990);
        } else {
            assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))), 0);
        }
    }

    function cancelStandardOperationsTransferOnly(uint256 _nonce) public {
        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());
        // Send user 10000 testWETH
        uint256 amount = 10000;
        c.originToken().transfer(originUser1, amount + amount / c.originLayercake().forwardedFeeDenominator());
        assertEq(
            c.originToken().balanceOf(originUser1), amount + amount / c.originLayercake().forwardedFeeDenominator()
        );

        // Standard operations transfering 10000 testWETH with a fee of 10 testWETH
        address destinationUser1 = address(vm.addr(4000));
        Operations memory standardOperations = Operations(
            _nonce, amount, 10, originUser1, destinationUser1, block.timestamp, 0, "", false, 0, address(0), false, ""
        );

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + amount);

        // Cancel the operations
        UserController(originUser1).cancelStandardOperations(c.destinationLayercake(), standardOperations);

        // Execute the cancellation of the operations
        uint256 originBpPk1 = 1000;
        address originBp1 = vm.addr(originBpPk1);
        standardOperations.cancel = true;
        standardOperations.cancellationFeeRefund = standardOperations.fee;
        bytes32 executionId =
            c.originLayercake().getExecutionId(c.originLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(originBpPk1, prefixedHashMessage);
        ExecutionProof memory executionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(originBp1).executeCancelStandardOperations(c.originLayercake(), executionProof);
        assertEq(c.originToken().balanceOf(originUser1), amount - standardOperations.fee);
    }
}
