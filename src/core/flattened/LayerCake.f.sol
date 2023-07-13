// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

contract LayerCakeExecutionProof {
    struct Operations {
        uint256 nonce;
        uint256 amount;
        uint256 fee;
        address sender;
        address recipient;
        uint256 executionTime;
        uint256 callDataGasLimit;
        bytes callData;
        bool cancel;
        uint256 cancellationFeeRefund;
        address negatedBandwidthProvider;
        bool initialNegation;
        bytes32 invalidExecutionProofId;
    }

    struct ExecutionProof {
        Operations operations;
        uint256 partialAmount;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }
}

contract LayerCakeTools is LayerCakeExecutionProof {
    // =================================================================================
    // STRUCTS
    // =================================================================================

    struct ConstructorParams {
        bool isDestinationChain;
        uint256 thisChainId;
        uint256 oppositeChainId;
        uint256 assetId;
        uint256 contractId;
        address tokenAddress;
        string tokenName;
        string tokenSymbol;
        uint256 depositCap;
        uint256 reorgAssumption;
        uint256 bandwidthDepositDenominator;
        uint256 defaultNegationCost;
        address forwardedFeeRecipient;
        uint256 forwardedFeeDenominator;
    }

    // =================================================================================
    // EVENTS
    // =================================================================================

    event OperationsStored(bytes32 executionId, Operations operations);

    event OperationsExecuted(
        bytes32 executionId, address bandwidthProvider, ExecutionProof executionProof, bool executionPrepared
    );

    event BandwidthChanged(address bandwidthProvider, bool added, uint256 amount);

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function getPathwayId(uint256 _originChainId, uint256 _destinationChainId, uint256 _assetId, uint256 _contractId)
        public
        pure
        returns (bytes32 pathwayId)
    {
        pathwayId =
            keccak256(abi.encode("layercakePathwayId", _originChainId, _destinationChainId, _assetId, _contractId));
    }

    function getExecutionId(bytes32 _pathwayId, Operations memory _operations)
        public
        pure
        returns (bytes32 executionId)
    {
        executionId = keccak256(abi.encode("layercakeExecutionId", _pathwayId, _operations));
    }

    function getInvalidExecutionProofId(ExecutionProof memory _invalidExecutionProof)
        public
        pure
        returns (bytes32 invalidExecutionProofId)
    {
        invalidExecutionProofId = keccak256(abi.encode("layercakeInvalidExecutionProofId", _invalidExecutionProof));
    }

    function recoverSigner(bytes32 _hash, ExecutionProof memory _executionProof) public pure returns (address) {
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(prefix, _hash));
        address signer = ecrecover(prefixedHashMessage, _executionProof.v, _executionProof.r, _executionProof.s);
        return signer;
    }
}

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

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

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

contract LayerCakeStorageSlot is LayerCakeExecutionProof {
    struct ExecutionPreparation {
        bool executionPrepared;
        uint256 totalPrepared;
        uint256 feeIncrease;
        uint256 feesPaid;
    }

    address public immutable storageManager;
    uint256 public immutable storageStartTime;
    uint256 public immutable storageEndTime;

    mapping(bytes32 => bool) public openedExecutionIds;
    mapping(bytes32 => ExecutionPreparation) public preparedExecutionIds;

    uint256 public totalStored;
    uint256 public totalPrepared;
    mapping(address => uint256) public totalStoredPerAddress;
    mapping(address => uint256) public totalPreparedPerAddress;

    constructor(address _storageManager, uint256 _startTime, uint256 _storageEndTime) {
        storageManager = _storageManager;
        storageStartTime = _startTime;
        storageEndTime = _storageEndTime;
    }

    modifier storageManagerOnly() {
        require(msg.sender == storageManager, "SMO1");
        _;
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    // ==================
    // View Storage functions
    // ==================

    function getExecutionIdStored(bytes32 _executionId) external view returns (bool) {
        return openedExecutionIds[_executionId];
    }

    function getExecutionIdPrepared(bytes32 _executionId) public view returns (bool, uint256) {
        return (preparedExecutionIds[_executionId].executionPrepared, preparedExecutionIds[_executionId].totalPrepared);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(bytes32 _executionId, address _sender, uint256 _amount) external storageManagerOnly {
        openedExecutionIds[_executionId] = true;
        totalStored = totalStored + _amount;
        totalStoredPerAddress[_sender] = totalStoredPerAddress[_sender] + _amount;
    }

    function prepareExecutionId(bytes32 _executionId, address _preparer, ExecutionProof memory _executionProof)
        external
        storageManagerOnly
        returns (uint256, uint256, bool)
    {
        ExecutionPreparation memory executionIdInfo = preparedExecutionIds[_executionId];
        uint256 remainingAmount = _executionProof.operations.amount - executionIdInfo.totalPrepared;
        require(remainingAmount > 0, "PEIP1");
        if (_executionProof.partialAmount >= remainingAmount) {
            executionIdInfo.executionPrepared = true;
            _executionProof.partialAmount = remainingAmount;
        }
        uint256 remainingFees = _executionProof.operations.fee + executionIdInfo.feeIncrease - executionIdInfo.feesPaid;
        uint256 partialFee = (_executionProof.partialAmount * remainingFees) / remainingAmount;
        uint256 newRemainingAmount = remainingAmount - _executionProof.partialAmount;
        uint256 newRemainingFees = remainingFees - partialFee;
        if (newRemainingAmount > 0 && remainingFees > 0) {
            require(newRemainingFees > 0, "PEIP2");
        }
        executionIdInfo.totalPrepared = executionIdInfo.totalPrepared + _executionProof.partialAmount;
        executionIdInfo.feesPaid = executionIdInfo.feesPaid + partialFee;
        preparedExecutionIds[_executionId] = executionIdInfo;
        if (_preparer != _executionProof.operations.sender) {
            totalPreparedPerAddress[_preparer] = totalPreparedPerAddress[_preparer] + _executionProof.partialAmount;
            totalPrepared = totalPrepared + _executionProof.partialAmount;
        }
        return (partialFee, _executionProof.partialAmount, executionIdInfo.executionPrepared);
    }

    function increaseFee(bytes32 _executionId, uint256 _amount) external storageManagerOnly {
        preparedExecutionIds[_executionId].feeIncrease = preparedExecutionIds[_executionId].feeIncrease + _amount;
    }
}

contract LayerCakeStorageManager is LayerCakeExecutionProof {
    uint256 public constant STORAGE_TIME = 365 days;
    uint256 public constant STORAGE_SLOTS = 100;

    address public immutable layerCakeContract;
    uint256 public immutable layerCakeDeployTime;

    // Each slot lasts for STORAGE_TIME, and a new storage contract is automatically deployed every STORAGE_TIME,
    // overwriting slots from STORAGE_SLOTS many slots ago.
    address[STORAGE_SLOTS] public layerCakeStorageSlots;
    uint256 public storageEpoch;

    constructor(address _layerCakeContract) {
        layerCakeContract = _layerCakeContract;
        layerCakeDeployTime = block.timestamp;
        LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                                    address(this), 
                                    block.timestamp, 
                                    block.timestamp + STORAGE_TIME
                                );
        layerCakeStorageSlots[0] = address(newLayerCakeStorageSlot);
    }

    modifier layerCakeOnly() {
        require(msg.sender == layerCakeContract, "LCO1");
        _;
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function _getStorageSlot(uint256 _timestamp)
        private
        view
        returns (uint256 thisStorageSlot, uint256 latestStorageEpoch, uint256 thisStorageEpoch, bool newSlotRequired)
    {
        // If a new storage time block is entered, deploy a new contract and self destruct the old one from a year ago
        thisStorageEpoch = (_timestamp - layerCakeDeployTime) / STORAGE_TIME;
        latestStorageEpoch = (block.timestamp - layerCakeDeployTime) / STORAGE_TIME;
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS, "GSS1");
        thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS;
        if (thisStorageEpoch > storageEpoch) {
            newSlotRequired = true;
        }
    }

    function _checkCreateStorageSlot(uint256 _timestamp) private returns (uint256 storageSlot) {
        uint256 thisStorageSlot;
        uint256 latestStorageEpoch;
        uint256 thisStorageEpoch;
        bool newSlotRequired;
        (thisStorageSlot, latestStorageEpoch, thisStorageEpoch, newSlotRequired) = _getStorageSlot(_timestamp);
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS / 2, "CCSS1");
        if (newSlotRequired) {
            // Deploy new contract
            LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                address(this), 
                layerCakeDeployTime + (thisStorageEpoch * STORAGE_TIME),
                layerCakeDeployTime + ((thisStorageEpoch + 1) * STORAGE_TIME)
            );
            layerCakeStorageSlots[thisStorageSlot] = address(newLayerCakeStorageSlot);
            storageEpoch = thisStorageEpoch;
        }
        require(
            _timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime()
                && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),
            "CCSS2"
        );
        return thisStorageSlot;
    }

    // ==================
    // View Storage functions
    // ==================

    function getExecutionIdStored(uint256 _executionTime, bytes32 _executionId) external view returns (bool) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(_executionTime);
        if (newSlotRequired) {
            return false;
        }
        return LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdStored(_executionId);
    }

    function getExecutionIdPrepared(uint256 _executionTime, bytes32 _executionId) public view returns (bool, uint256) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(_executionTime);
        if (newSlotRequired) {
            return (false, 0);
        }
        return LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(uint256 _executionTime, bytes32 _executionId, address _sender, uint256 _amount)
        external
        layerCakeOnly
    {
        LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionTime)]).storeExecutionId(
            _executionId, _sender, _amount
        );
    }

    function prepareExecutionId(bytes32 _executionId, address _preparer, ExecutionProof memory _executionProof)
        external
        layerCakeOnly
        returns (uint256, uint256, bool)
    {
        return LayerCakeStorageSlot(
            layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]
        ).prepareExecutionId(_executionId, _preparer, _executionProof);
    }

    function increaseFee(uint256 _executionTime, bytes32 _executionId, uint256 _amount) external layerCakeOnly {
        LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionTime)]).increaseFee(
            _executionId, _amount
        );
    }
}

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

contract LayerCakeCalldataInterface is ReentrancyGuard {
    function execute(address _recipient, bytes memory _callData) external nonReentrant {
        (bool success, bytes memory result) = address(_recipient).call(_callData);
        if (!success) {
            if (result.length < 68) revert("E1");
            assembly {
                result := add(result, 0x04)
            }
            revert(abi.decode(result, (string)));
        }
    }
}

/**
 * @title LayerCake
 * @dev An insured-in-transit cross-network composability protocol
 */
contract LayerCake is ReentrancyGuard, LayerCakeTools {
    // =================================================================================
    // PUBLIC VARIABLES
    // =================================================================================

    bool public immutable isDestinationChain;
    bytes32 public immutable departingPathwayId;
    bytes32 public immutable arrivingPathwayId;
    // On the source chain, `token` is the real token deposited by users.
    // On the destination chain, `token` represents the wrapped version of this ERC20.
    //      The destination version of the token should be a custom ERC20 with a
    //      maximum deposit capacity.
    IERC20 public immutable token;
    uint256 public immutable depositCap;

    LayerCakeBandwidthManager public immutable bandwidthManager;
    LayerCakeStorageManager public immutable storageManager;
    LayerCakeCalldataInterface public immutable calldataInterface;

    address public immutable forwardedFeeRecipient;
    uint256 public immutable forwardedFeeDenominator;

    // =================================================================================
    // CONSTRUCTOR
    // =================================================================================

    constructor(ConstructorParams memory _params) {
        isDestinationChain = _params.isDestinationChain;
        departingPathwayId =
            getPathwayId(_params.thisChainId, _params.oppositeChainId, _params.assetId, _params.contractId);
        arrivingPathwayId =
            getPathwayId(_params.oppositeChainId, _params.thisChainId, _params.assetId, _params.contractId);
        token = IERC20(_params.tokenAddress);
        depositCap = _params.depositCap;
        forwardedFeeRecipient = _params.forwardedFeeRecipient;
        forwardedFeeDenominator = _params.forwardedFeeDenominator;
        bandwidthManager = new LayerCakeBandwidthManager(
                                    address(this), 
                                    _params.reorgAssumption,
                                    _params.bandwidthDepositDenominator,
                                    _params.defaultNegationCost);
        storageManager = new LayerCakeStorageManager(address(this));
        calldataInterface = new LayerCakeCalldataInterface();
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    // =================
    // Proof functions
    // =================

    function getExecutionValidity(
        address _bandwidthProvider,
        bytes32 _executionId,
        ExecutionProof memory _executionProof
    ) public view returns (bool) {
        // Check that the signature on _proof matches _bandwidthProvider signing the executionId hash
        require(recoverSigner(_executionId, _executionProof) == _bandwidthProvider, "GEV1");
        return (storageManager.getExecutionIdStored(_executionProof.operations.executionTime, _executionId));
    }

    // ==============
    // User functions
    // ==============

    function storeStandardOperations(Operations memory _operations) external {
        require(_operations.negatedBandwidthProvider == address(0), "SSO1");
        require(!_operations.cancel, "SSO2");
        if (forwardedFeeDenominator > 0) {
            uint256 forwardedFee = _operations.amount / forwardedFeeDenominator;
            require(forwardedFee > 0, "SSO3");
            uint256 forwardedFeeRecipientCurrentBalance = token.balanceOf(forwardedFeeRecipient);
            token.transferFrom(msg.sender, forwardedFeeRecipient, forwardedFee);
            require(token.balanceOf(forwardedFeeRecipient) > forwardedFeeRecipientCurrentBalance, "SSO4");
        }
        uint256 thisCurrentBalance = token.balanceOf(address(this));
        token.transferFrom(msg.sender, address(this), _operations.amount);
        _operations.amount = token.balanceOf(address(this)) - thisCurrentBalance;
        _storeOperations(_operations);
    }

    function cancelStandardOperations(Operations memory _operations) external nonReentrant {
        require(_operations.negatedBandwidthProvider == address(0), "CSO1");
        require(!_operations.cancel, "CSO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, _operations);
        (bool executionPrepared,) = storageManager.getExecutionIdPrepared(_operations.executionTime, executionId);
        require(!executionPrepared, "CSO3");
        ExecutionProof memory cancelExecutionProof =
            ExecutionProof(_operations, _operations.amount, 0, bytes32(0), bytes32(0));
        uint256 partialFee;
        (partialFee, executionPrepared) = _executeOperations(cancelExecutionProof, true);
        require(executionPrepared, "CSO4");
        _operations.cancel = true;
        _operations.amount = _operations.amount - _operations.fee + partialFee;
        _storeOperations(_operations);
    }

    function storeNegationOperations(Operations memory _operations) external nonReentrant {
        require(_operations.negatedBandwidthProvider != address(0), "SNO1");
        require(!_operations.cancel, "SNO2");
        uint256 currentBalance = token.balanceOf(address(this));
        token.transferFrom(msg.sender, address(this), _operations.amount);
        _operations.amount = token.balanceOf(address(this)) - currentBalance;
        _operations.amount = bandwidthManager.negateBp(
            _operations.negatedBandwidthProvider,
            _operations.amount,
            _operations.fee,
            _operations.initialNegation,
            _operations.invalidExecutionProofId
        );
        _storeOperations(_operations);
    }

    function addBandwidth(uint256 _bandwidthAmount) external {
        uint256 depositedAmount = bandwidthManager.addBandwidth(msg.sender, _bandwidthAmount);
        token.transferFrom(msg.sender, address(this), depositedAmount);
        require(token.balanceOf(address(this)) <= depositCap, "AB1");
        emit BandwidthChanged(msg.sender, true, _bandwidthAmount);
    }

    function subtractBandwidth(uint256 _bandwidthAmount) external nonReentrant {
        uint256 withdrawnAmount = bandwidthManager.subtractBandwidth(msg.sender, _bandwidthAmount);
        token.transfer(msg.sender, withdrawnAmount);
        emit BandwidthChanged(msg.sender, false, _bandwidthAmount);
    }

    function increaseFee(bytes32 _executionId, uint256 _executionTime, uint256 _addedFee) external nonReentrant {
        require(block.timestamp >= _executionTime, "IF1");
        token.transferFrom(msg.sender, address(this), _addedFee);
        require(token.balanceOf(address(this)) <= depositCap, "IF2");
        storageManager.increaseFee(_executionTime, _executionId, _addedFee);
    }

    // ==============
    // Bandwidth Provider functions
    // ==============

    function executeStandardOperations(ExecutionProof memory _executionProof) external {
        require(_executionProof.operations.negatedBandwidthProvider == address(0), "ESO1");
        require(!_executionProof.operations.cancel, "ESO2");
        require(_executionProof.operations.cancellationFeeRefund == 0, "ESO3");
        (, bool executionPrepared) = _executeOperations(_executionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _executionProof.operations.recipient, _executionProof.operations.amount - _executionProof.operations.fee
        );
        if (_executionProof.operations.callData.length > 1) {
            uint256 currentBalance = token.balanceOf(address(calldataInterface));
            uint256 initialGasLeft = gasleft();
            calldataInterface.execute(_executionProof.operations.recipient, _executionProof.operations.callData);
            require(_executionProof.operations.callDataGasLimit >= initialGasLeft - gasleft(), "ESO4");
            require(token.balanceOf(address(calldataInterface)) == currentBalance, "ESO5");
        }
    }

    function executeCancelStandardOperations(ExecutionProof memory _executionProof) external nonReentrant {
        require(_executionProof.operations.negatedBandwidthProvider == address(0), "ECSO1");
        require(_executionProof.operations.cancel, "ECSO2");
        require(_executionProof.operations.cancellationFeeRefund <= _executionProof.operations.fee, "ECSO3");
        // Check that these operations were originally stored on this chain
        uint256 feeRefund = _executionProof.operations.cancellationFeeRefund;
        _executionProof.operations.cancel = false;
        _executionProof.operations.amount =
            _executionProof.operations.amount + _executionProof.operations.fee - feeRefund;
        _executionProof.operations.cancellationFeeRefund = 0;
        bytes32 executionId = getExecutionId(departingPathwayId, _executionProof.operations);
        require(storageManager.getExecutionIdStored(_executionProof.operations.executionTime, executionId), "ECSO4");
        // Execute the operations
        _executionProof.operations.cancel = true;
        _executionProof.operations.amount =
            _executionProof.operations.amount - _executionProof.operations.fee + feeRefund;
        _executionProof.operations.cancellationFeeRefund = feeRefund;
        (, bool executionPrepared) = _executeOperations(_executionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _executionProof.operations.sender, _executionProof.operations.amount - _executionProof.operations.fee
        );
    }

    function executeNegationOperations(
        ExecutionProof memory _negationExecutionProof,
        ExecutionProof memory _invalidExecutionProof
    ) external nonReentrant {
        require(_negationExecutionProof.operations.negatedBandwidthProvider != address(0), "ENO1");
        require(!_negationExecutionProof.operations.cancel, "ENO2");
        require(_negationExecutionProof.operations.cancellationFeeRefund == 0, "ENO3");
        bytes32 invalidExecutionProofId = getInvalidExecutionProofId(_invalidExecutionProof);
        require(invalidExecutionProofId == _negationExecutionProof.operations.invalidExecutionProofId, "ENO4");
        bytes32 invalidExecutionId = getExecutionId(departingPathwayId, _invalidExecutionProof.operations);
        bool executionValidity = getExecutionValidity(
            _negationExecutionProof.operations.negatedBandwidthProvider, invalidExecutionId, _invalidExecutionProof
        );
        require(_negationExecutionProof.operations.initialNegation != executionValidity, "ENO5");
        (, bool executionPrepared) = _executeOperations(_negationExecutionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _negationExecutionProof.operations.recipient,
            _negationExecutionProof.operations.amount - _negationExecutionProof.operations.fee
        );
    }

    // ==============
    // Private functions
    // ==============

    function _storeOperations(Operations memory _operations) private {
        require(_operations.recipient != address(0), "SO1");
        require(_operations.sender == msg.sender, "SO2");
        if (!_operations.cancel) {
            require(_operations.amount >= 2 * _operations.fee, "SO3");
        } else {
            require(_operations.amount >= _operations.fee, "SO4");
        }
        require(token.balanceOf(address(this)) <= depositCap, "SO5");
        _operations.executionTime = block.timestamp;
        bytes32 executionId = getExecutionId(departingPathwayId, _operations);
        require(!storageManager.getExecutionIdStored(_operations.executionTime, executionId), "SO6");
        storageManager.storeExecutionId(_operations.executionTime, executionId, _operations.sender, _operations.amount);
        emit OperationsStored(executionId, _operations);
    }

    function _executeOperations(ExecutionProof memory _executionProof, bool _cancel) internal returns (uint256, bool) {
        require(_executionProof.operations.recipient != address(0), "EO1");
        require(block.timestamp >= _executionProof.operations.executionTime, "EO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, _executionProof.operations);
        (uint256 partialFee, uint256 bandwidthUsed, bool executionPrepared) =
            storageManager.prepareExecutionId(executionId, msg.sender, _executionProof);
        if (!_cancel) {
            require(recoverSigner(executionId, _executionProof) == msg.sender, "EO3");
            bandwidthManager.proveBandwidth(msg.sender, bandwidthUsed);
            token.transfer(msg.sender, partialFee);
        }
        emit OperationsExecuted(executionId, msg.sender, _executionProof, executionPrepared);
        return (partialFee, executionPrepared);
    }
}
