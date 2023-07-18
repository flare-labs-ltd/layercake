**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [weak-prng](#weak-prng) (3 results) (High)
 - [name-reused](#name-reused) (19 results) (High)
 - [shadowing-state](#shadowing-state) (1 results) (High)
 - [unchecked-transfer](#unchecked-transfer) (50 results) (High)
 - [divide-before-multiply](#divide-before-multiply) (8 results) (Medium)
 - [incorrect-equality](#incorrect-equality) (9 results) (Medium)
 - [uninitialized-local](#uninitialized-local) (5 results) (Medium)
 - [unused-return](#unused-return) (39 results) (Medium)
 - [shadowing-local](#shadowing-local) (2 results) (Low)
 - [events-access](#events-access) (2 results) (Low)
 - [missing-zero-check](#missing-zero-check) (19 results) (Low)
 - [incorrect-modifier](#incorrect-modifier) (2 results) (Low)
 - [calls-loop](#calls-loop) (23 results) (Low)
 - [reentrancy-benign](#reentrancy-benign) (105 results) (Low)
 - [reentrancy-events](#reentrancy-events) (104 results) (Low)
 - [timestamp](#timestamp) (29 results) (Low)
 - [assembly](#assembly) (390 results) (Informational)
 - [boolean-equal](#boolean-equal) (2 results) (Informational)
 - [pragma](#pragma) (1 results) (Informational)
 - [dead-code](#dead-code) (57 results) (Informational)
 - [solc-version](#solc-version) (78 results) (Informational)
 - [low-level-calls](#low-level-calls) (16 results) (Informational)
 - [naming-convention](#naming-convention) (198 results) (Informational)
 - [redundant-statements](#redundant-statements) (3 results) (Informational)
 - [similar-names](#similar-names) (57 results) (Informational)
 - [too-many-digits](#too-many-digits) (21 results) (Informational)
 - [unused-state](#unused-state) (173 results) (Informational)
 - [constable-states](#constable-states) (36 results) (Optimization)
 - [immutable-states](#immutable-states) (13 results) (Optimization)
## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-0
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/LayerCakeStorageManager.sol#L42-L55) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/LayerCakeStorageManager.sol#L51)" 

src/core/LayerCakeStorageManager.sol#L42-L55


 - [ ] ID-1
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L171)" 

src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175


 - [ ] ID-2
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L547-L560) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L556)" 

src/core/flattened/LayerCake.f.sol#L547-L560


## name-reused
Impact: High
Confidence: High
 - [ ] ID-3
ERC20 is re-used:
	- [ERC20](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L38-L370)
	- [ERC20](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1228-L1556)
	- [ERC20](src/core/flattened/LayerCakeTransportedToken.f.sol#L159-L487)
	- [ERC20](src/test/flattened/TestWETH.f.sol#L159-L487)

lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L38-L370


 - [ ] ID-4
LayerCakeCalldataInterface is re-used:
	- [LayerCakeCalldataInterface](src/core/LayerCakeCalldataInterface.sol#L9-L20)
	- [LayerCakeCalldataInterface](src/core/flattened/LayerCake.f.sol#L644-L655)
	- [LayerCakeCalldataInterface](src/core/flattened/LayerCakeCalldataInterface.f.sol#L82-L93)

src/core/LayerCakeCalldataInterface.sol#L9-L20


 - [ ] ID-5
LayerCakeExecutionProof is re-used:
	- [LayerCakeExecutionProof](src/core/LayerCakeExecutionProof.sol#L7-L31)
	- [LayerCakeExecutionProof](src/core/flattened/LayerCake.f.sol#L164-L188)
	- [LayerCakeExecutionProof](src/core/flattened/LayerCakeExecutionProof.f.sol#L7-L31)
	- [LayerCakeExecutionProof](src/core/flattened/LayerCakeStorageManager.f.sol#L10-L34)
	- [LayerCakeExecutionProof](src/core/flattened/LayerCakeStorageSlot.f.sol#L10-L34)
	- [LayerCakeExecutionProof](src/core/flattened/LayerCakeTools.f.sol#L10-L34)

src/core/LayerCakeExecutionProof.sol#L7-L31


 - [ ] ID-6
LayerCakeStorageManager is re-used:
	- [LayerCakeStorageManager](src/core/LayerCakeStorageManager.sol#L10-L134)
	- [LayerCakeStorageManager](src/core/flattened/LayerCake.f.sol#L515-L639)
	- [LayerCakeStorageManager](src/core/flattened/LayerCakeStorageManager.f.sol#L130-L254)

src/core/LayerCakeStorageManager.sol#L10-L134


 - [ ] ID-7
LayerCakeDeployTools is re-used:
	- [LayerCakeDeployTools](src/core/LayerCakeDeployTools.sol#L7-L23)
	- [LayerCakeDeployTools](src/core/flattened/LayerCakeDeployTools.f.sol#L7-L23)
	- [LayerCakeDeployTools](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1055-L1071)
	- [LayerCakeDeployTools](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1147)

src/core/LayerCakeDeployTools.sol#L7-L23


 - [ ] ID-8
IERC20Metadata is re-used:
	- [IERC20Metadata](lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L11-L26)
	- [IERC20Metadata](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1161-L1176)
	- [IERC20Metadata](src/core/flattened/LayerCakeTransportedToken.f.sol#L92-L107)
	- [IERC20Metadata](src/test/flattened/TestWETH.f.sol#L92-L107)

lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L11-L26


 - [ ] ID-9
EnumerableMap is re-used:
	- [EnumerableMap](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L48-L537)
	- [EnumerableMap](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L500-L1050)
	- [EnumerableMap](src/core/flattened/LayerCakeOriginDeploy.f.sol#L576-L1126)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L48-L537


 - [ ] ID-10
Context is re-used:
	- [Context](lib/openzeppelin-contracts/contracts/utils/Context.sol#L16-L24)
	- [Context](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1190-L1198)
	- [Context](src/core/flattened/LayerCakeTransportedToken.f.sol#L121-L129)
	- [Context](src/test/flattened/TestWETH.f.sol#L121-L129)

lib/openzeppelin-contracts/contracts/utils/Context.sol#L16-L24


 - [ ] ID-11
IERC20 is re-used:
	- [IERC20](lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L9-L79)
	- [IERC20](src/core/flattened/LayerCake.f.sol#L87-L156)
	- [IERC20](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1083-L1152)
	- [IERC20](src/core/flattened/LayerCakeOriginDeploy.f.sol#L87-L156)
	- [IERC20](src/core/flattened/LayerCakeTransportedToken.f.sol#L14-L83)
	- [IERC20](src/test/flattened/TestWETH.f.sol#L14-L83)

lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L9-L79


 - [ ] ID-12
LayerCakeOriginDeploy is re-used:
	- [LayerCakeOriginDeploy](src/core/LayerCakeOriginDeploy.sol#L12-L64)
	- [LayerCakeOriginDeploy](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1149-L1201)

src/core/LayerCakeOriginDeploy.sol#L12-L64


 - [ ] ID-13
LayerCakeTransportedToken is re-used:
	- [LayerCakeTransportedToken](src/core/LayerCakeTransportedToken.sol#L9-L19)
	- [LayerCakeTransportedToken](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1558-L1568)
	- [LayerCakeTransportedToken](src/core/flattened/LayerCakeTransportedToken.f.sol#L489-L499)

src/core/LayerCakeTransportedToken.sol#L9-L19


 - [ ] ID-14
EnumerableSet is re-used:
	- [EnumerableSet](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L41-L378)
	- [EnumerableSet](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L122-L459)
	- [EnumerableSet](src/core/flattened/LayerCakeOriginDeploy.f.sol#L198-L535)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L41-L378


 - [ ] ID-15
LayerCake is re-used:
	- [LayerCake](src/core/LayerCake.sol#L18-L261)
	- [LayerCake](src/core/flattened/LayerCake.f.sol#L661-L904)

src/core/LayerCake.sol#L18-L261


 - [ ] ID-16
TestWETH is re-used:
	- [TestWETH](src/test/TestWETH.sol#L9-L14)
	- [TestWETH](src/test/flattened/TestWETH.f.sol#L489-L494)

src/test/TestWETH.sol#L9-L14


 - [ ] ID-17
LayerCakeStorageSlot is re-used:
	- [LayerCakeStorageSlot](src/core/LayerCakeStorageSlot.sol#L9-L98)
	- [LayerCakeStorageSlot](src/core/flattened/LayerCake.f.sol#L424-L513)
	- [LayerCakeStorageSlot](src/core/flattened/LayerCakeStorageManager.f.sol#L39-L128)
	- [LayerCakeStorageSlot](src/core/flattened/LayerCakeStorageSlot.f.sol#L36-L125)

src/core/LayerCakeStorageSlot.sol#L9-L98


 - [ ] ID-18
LayerCakeDestinationDeploy is re-used:
	- [LayerCakeDestinationDeploy](src/core/LayerCakeDestinationDeploy.sol#L12-L75)
	- [LayerCakeDestinationDeploy](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1570-L1633)

src/core/LayerCakeDestinationDeploy.sol#L12-L75


 - [ ] ID-19
LayerCakeBandwidthManager is re-used:
	- [LayerCakeBandwidthManager](src/core/LayerCakeBandwidthManager.sol#L7-L151)
	- [LayerCakeBandwidthManager](src/core/flattened/LayerCake.f.sol#L264-L416)
	- [LayerCakeBandwidthManager](src/core/flattened/LayerCakeBandwidthManager.f.sol#L7-L159)

src/core/LayerCakeBandwidthManager.sol#L7-L151


 - [ ] ID-20
ReentrancyGuard is re-used:
	- [ReentrancyGuard](lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol#L22-L84)
	- [ReentrancyGuard](src/core/flattened/LayerCake.f.sol#L25-L80)
	- [ReentrancyGuard](src/core/flattened/LayerCakeCalldataInterface.f.sol#L25-L80)
	- [ReentrancyGuard](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L25-L80)
	- [ReentrancyGuard](src/core/flattened/LayerCakeOriginDeploy.f.sol#L25-L80)

lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol#L22-L84


 - [ ] ID-21
LayerCakeTools is re-used:
	- [LayerCakeTools](src/core/LayerCakeTools.sol#L9-L78)
	- [LayerCakeTools](src/core/flattened/LayerCake.f.sol#L190-L259)
	- [LayerCakeTools](src/core/flattened/LayerCakeTools.f.sol#L36-L105)

src/core/LayerCakeTools.sol#L9-L78


## shadowing-state
Impact: High
Confidence: High
 - [ ] ID-22
[StdCheats.vm](lib/forge-std/src/StdCheats.sol#L639) shadows:
	- [StdCheatsSafe.vm](lib/forge-std/src/StdCheats.sol#L10)

lib/forge-std/src/StdCheats.sol#L639


## unchecked-transfer
Impact: High
Confidence: Medium
 - [ ] ID-23
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903) ignores return value by [token.transfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L899)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-24
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/LayerCake.sol#L146-L151) ignores return value by [token.transferFrom(msg.sender,address(this),_addedFee)](src/core/LayerCake.sol#L148)

src/core/LayerCake.sol#L146-L151


 - [ ] ID-25
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) ignores return value by [destinationToken.transfer(address(destinationLayercake),destinationConstructorParams.depositCap - originDeploy.depositedAmount())](src/test/VerifiedSetupController.sol#L172-L174)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-26
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) ignores return value by [originToken.transfer(msg.sender,originToken.balanceOf(address(this)))](src/test/VerifiedSetupController.sol#L222)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-27
[LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)](src/core/LayerCake.sol#L203-L225) ignores return value by [token.transfer(_negationExecutionProof.operations.recipient,_negationExecutionProof.operations.amount - _negationExecutionProof.operations.fee)](src/core/LayerCake.sol#L221-L224)

src/core/LayerCake.sol#L203-L225


 - [ ] ID-28
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) ignores return value by [destinationToken.transfer(address(destinationDeploy),originDeploy.depositedAmount())](src/test/VerifiedSetupController.sol#L183)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-29
[LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L776-L781) ignores return value by [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/flattened/LayerCake.f.sol#L778)

src/core/flattened/LayerCake.f.sol#L776-L781


 - [ ] ID-30
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/LayerCakeOriginDeploy.sol#L47-L56) ignores return value by [originToken.transfer(msg.sender,_amount)](src/core/LayerCakeOriginDeploy.sol#L51)

src/core/LayerCakeOriginDeploy.sol#L47-L56


 - [ ] ID-31
[LayerCakeBandwidthChangesTest.setUp()](src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29) ignores return value by [c.originToken().transfer(address(s),c.originToken().balanceOf(address(this)))](src/test/LayerCakeBandwidthChangesTest.t.sol#L28)

src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29


 - [ ] ID-32
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1200) ignores return value by [originToken.transfer(layerCakeAddress,originToken.balanceOf(address(this)))](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1199)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1200


 - [ ] ID-33
[StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258) ignores return value by [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-34
[TestWithdraw.run()](script/test/TestWithdraw.s.sol#L29-L57) ignores return value by [layercake.token().transfer(vm.addr(storeOperationsPrivateKey),depositAmount)](script/test/TestWithdraw.s.sol#L42)

script/test/TestWithdraw.s.sol#L29-L57


 - [ ] ID-35
[LayerCakeNegationOperationsTest.setUp()](src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28) ignores return value by [c.originToken().transfer(address(n),c.originToken().balanceOf(address(this)))](src/test/LayerCakeNegationOperationsTest.t.sol#L27)

src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28


 - [ ] ID-36
[LayerCakeStandardOperationsTest.setUp()](src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28) ignores return value by [c.originToken().transfer(address(s),c.originToken().balanceOf(address(this)))](src/test/LayerCakeStandardOperationsTest.t.sol#L27)

src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28


 - [ ] ID-37
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182) ignores return value by [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1174)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182


 - [ ] ID-38
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L789-L794) ignores return value by [token.transferFrom(msg.sender,address(this),_addedFee)](src/core/flattened/LayerCake.f.sol#L791)

src/core/flattened/LayerCake.f.sol#L789-L794


 - [ ] ID-39
[DestinationLayerCake.run()](script/src/DestinationLayerCake.s.sol#L17-L71) ignores return value by [destinationToken.transfer(address(destinationLayercake),destinationConstructorParams.depositCap - vm.envUint(TOTAL_DEPOSIT_AMOUNT))](script/src/DestinationLayerCake.s.sol#L53-L55)

script/src/DestinationLayerCake.s.sol#L17-L71


 - [ ] ID-40
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L728-L742) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/flattened/LayerCake.f.sol#L739)

src/core/flattened/LayerCake.f.sol#L728-L742


 - [ ] ID-41
[TestTransfer.run()](script/test/TestTransfer.s.sol#L21-L34) ignores return value by [originToken.transfer(recipient,transferAmount)](script/test/TestTransfer.s.sol#L32)

script/test/TestTransfer.s.sol#L21-L34


 - [ ] ID-42
[LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L846-L868) ignores return value by [token.transfer(_negationExecutionProof.operations.recipient,_negationExecutionProof.operations.amount - _negationExecutionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L864-L867)

src/core/flattened/LayerCake.f.sol#L846-L868


 - [ ] ID-43
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1627-L1632) ignores return value by [destinationToken.transfer(msg.sender,currentBalance)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1631)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1627-L1632


 - [ ] ID-44
[NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93) ignores return value by [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-45
[StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177) ignores return value by [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-46
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) ignores return value by [originToken.transfer(originUser,depositAmount)](src/test/VerifiedSetupController.sol#L127)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-47
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193) ignores return value by [originToken.transfer(msg.sender,_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1188)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193


 - [ ] ID-48
[TestWithdraw.run()](script/test/TestWithdraw.s.sol#L29-L57) ignores return value by [layercake.token().transfer(vm.addr(executeOperationsPrivateKey),depositAmount)](script/test/TestWithdraw.s.sol#L43)

script/test/TestWithdraw.s.sol#L29-L57


 - [ ] ID-49
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/LayerCake.sol#L247-L260) ignores return value by [token.transfer(msg.sender,partialFee)](src/core/LayerCake.sol#L256)

src/core/LayerCake.sol#L247-L260


 - [ ] ID-50
[StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219) ignores return value by [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-51
[DestinationDeploy.run()](script/src/DestinationDeploy.s.sol#L53-L92) ignores return value by [destinationToken.transfer(address(destinationDeploy),totalDepositAmount)](script/src/DestinationDeploy.s.sol#L72)

script/src/DestinationDeploy.s.sol#L53-L92


 - [ ] ID-52
[StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52) ignores return value by [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-53
[LayerCake.addBandwidth(uint256)](src/core/LayerCake.sol#L133-L138) ignores return value by [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/LayerCake.sol#L135)

src/core/LayerCake.sol#L133-L138


 - [ ] ID-54
[LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L117-L131) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/LayerCake.sol#L121)

src/core/LayerCake.sol#L117-L131


 - [ ] ID-55
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L728-L742) ignores return value by [token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee)](src/core/flattened/LayerCake.f.sol#L735)

src/core/flattened/LayerCake.f.sol#L728-L742


 - [ ] ID-56
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L800-L818) ignores return value by [token.transfer(_executionProof.operations.recipient,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L808-L810)

src/core/flattened/LayerCake.f.sol#L800-L818


 - [ ] ID-57
[LayerCakeOriginDeploy.deposit(uint256)](src/core/LayerCakeOriginDeploy.sol#L35-L45) ignores return value by [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/LayerCakeOriginDeploy.sol#L37)

src/core/LayerCakeOriginDeploy.sol#L35-L45


 - [ ] ID-58
[TestTokenDeploy.run()](script/test/TestTokenDeploy.s.sol#L20-L47) ignores return value by [originToken.transfer(executeOperationsAddress,amount)](script/test/TestTokenDeploy.s.sol#L37)

script/test/TestTokenDeploy.s.sol#L20-L47


 - [ ] ID-59
[LayerCake.subtractBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L783-L787) ignores return value by [token.transfer(msg.sender,withdrawnAmount)](src/core/flattened/LayerCake.f.sol#L785)

src/core/flattened/LayerCake.f.sol#L783-L787


 - [ ] ID-60
[LayerCake.executeCancelStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/LayerCake.sol#L177-L201) ignores return value by [token.transfer(_executionProof.operations.sender,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/LayerCake.sol#L198-L200)

src/core/LayerCake.sol#L177-L201


 - [ ] ID-61
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/LayerCake.sol#L157-L175) ignores return value by [token.transfer(_executionProof.operations.recipient,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/LayerCake.sol#L165-L167)

src/core/LayerCake.sol#L157-L175


 - [ ] ID-62
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L85-L99) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/LayerCake.sol#L96)

src/core/LayerCake.sol#L85-L99


 - [ ] ID-63
[LayerCake.executeCancelStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L820-L844) ignores return value by [token.transfer(_executionProof.operations.sender,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L841-L843)

src/core/flattened/LayerCake.f.sol#L820-L844


 - [ ] ID-64
[StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99) ignores return value by [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-65
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L85-L99) ignores return value by [token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee)](src/core/LayerCake.sol#L92)

src/core/LayerCake.sol#L85-L99


 - [ ] ID-66
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/LayerCakeOriginDeploy.sol#L58-L63) ignores return value by [originToken.transfer(layerCakeAddress,originToken.balanceOf(address(this)))](src/core/LayerCakeOriginDeploy.sol#L62)

src/core/LayerCakeOriginDeploy.sol#L58-L63


 - [ ] ID-67
[LayerCake.subtractBandwidth(uint256)](src/core/LayerCake.sol#L140-L144) ignores return value by [token.transfer(msg.sender,withdrawnAmount)](src/core/LayerCake.sol#L142)

src/core/LayerCake.sol#L140-L144


 - [ ] ID-68
[TestTokenDeploy.run()](script/test/TestTokenDeploy.s.sol#L20-L47) ignores return value by [originToken.transfer(storeOperationsAddress,amount)](script/test/TestTokenDeploy.s.sol#L36)

script/test/TestTokenDeploy.s.sol#L20-L47


 - [ ] ID-69
[StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133) ignores return value by [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-70
[LayerCakeDestinationDeploy.withdraw()](src/core/LayerCakeDestinationDeploy.sol#L69-L74) ignores return value by [destinationToken.transfer(msg.sender,currentBalance)](src/core/LayerCakeDestinationDeploy.sol#L73)

src/core/LayerCakeDestinationDeploy.sol#L69-L74


 - [ ] ID-71
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) ignores return value by [originToken.transfer(originBp,depositAmount)](src/test/VerifiedSetupController.sol#L207)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-72
[LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L760-L774) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/flattened/LayerCake.f.sol#L764)

src/core/flattened/LayerCake.f.sol#L760-L774


## divide-before-multiply
Impact: Medium
Confidence: Medium
 - [ ] ID-73
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L190)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-74
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L193)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-75
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L188)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-76
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse = (3 * denominator) ^ 2](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L184)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-77
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [prod0 = prod0 / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L172)
	- [result = prod0 * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L199)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-78
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L192)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-79
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L191)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-80
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) performs a multiplication on the result of a division:
	- [denominator = denominator / twos](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L169)
	- [inverse *= 2 - denominator * inverse](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L189)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-81
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1611)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625


 - [ ] ID-82
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/LayerCakeBandwidthManager.sol#L78-L96) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/LayerCakeBandwidthManager.sol#L86)

src/core/LayerCakeBandwidthManager.sol#L78-L96


 - [ ] ID-83
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L800-L818) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO5)](src/core/flattened/LayerCake.f.sol#L816)

src/core/flattened/LayerCake.f.sol#L800-L818


 - [ ] ID-84
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L339-L357) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L347)

src/core/flattened/LayerCake.f.sol#L339-L357


 - [ ] ID-85
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/LayerCakeDestinationDeploy.sol#L23-L35) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(_layerCakeAddress) == _depositCap - _depositedAmount)](src/core/LayerCakeDestinationDeploy.sol#L33)

src/core/LayerCakeDestinationDeploy.sol#L23-L35


 - [ ] ID-86
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1581-L1593) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(_layerCakeAddress) == _depositCap - _depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1591)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1581-L1593


 - [ ] ID-87
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/LayerCake.sol#L157-L175) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO5)](src/core/LayerCake.sol#L173)

src/core/LayerCake.sol#L157-L175


 - [ ] ID-88
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L90)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100


 - [ ] ID-89
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/LayerCakeDestinationDeploy.sol#L52-L67) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/LayerCakeDestinationDeploy.sol#L53)

src/core/LayerCakeDestinationDeploy.sol#L52-L67


## uninitialized-local
Impact: Medium
Confidence: Medium
 - [ ] ID-90
[StdCheatsSafe.rawToConvertedEIPTx1559(StdCheatsSafe.RawTx1559).transaction](lib/forge-std/src/StdCheats.sol#L377) is a local variable never initialized

lib/forge-std/src/StdCheats.sol#L377


 - [ ] ID-91
[StdCheatsSafe.readEIP1559ScriptArtifact(string).artifact](lib/forge-std/src/StdCheats.sol#L357) is a local variable never initialized

lib/forge-std/src/StdCheats.sol#L357


 - [ ] ID-92
[StdCheatsSafe.rawToConvertedEIP1559Detail(StdCheatsSafe.RawTx1559Detail).txDetail](lib/forge-std/src/StdCheats.sol#L393) is a local variable never initialized

lib/forge-std/src/StdCheats.sol#L393


 - [ ] ID-93
[VerifiedSetupController.constructor()._balanceChanges](src/test/VerifiedSetupController.sol#L121) is a local variable never initialized

src/test/VerifiedSetupController.sol#L121


 - [ ] ID-94
[StdCheatsSafe.rawToConvertedReceipt(StdCheatsSafe.RawReceipt).receipt](lib/forge-std/src/StdCheats.sol#L445) is a local variable never initialized

lib/forge-std/src/StdCheats.sol#L445


## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-95
[TestOriginAddBandwidth.run()](script/test/TestOriginAddBandwidth.s.sol#L23-L35) ignores return value by [layercake.token().approve(address(layercake),approvalAmount)](script/test/TestOriginAddBandwidth.s.sol#L32)

script/test/TestOriginAddBandwidth.s.sol#L23-L35


 - [ ] ID-96
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,msg.sender)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1176)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182


 - [ ] ID-97
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L239-L247) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]).prepareExecutionId(_executionId,_preparer,_executionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L244-L246)

src/core/flattened/LayerCakeStorageManager.f.sol#L239-L247


 - [ ] ID-98
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance + _amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1177)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182


 - [ ] ID-99
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) ignores return value by [(None,None,None,None,None,None,destinationcurrentTotalBandwidth,None) = destinationBandwidthManager.bpInfo(vm.addr(2000))](src/test/LayerCakeVerifiedSetupTest.t.sol#L61)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-100
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/LayerCakeOriginDeploy.sol#L47-L56) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance - _amount)](src/core/LayerCakeOriginDeploy.sol#L50)

src/core/LayerCakeOriginDeploy.sol#L47-L56


 - [ ] ID-101
[NegationOperationsController.storeSelfNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L204-L244) ignores return value by [(negated) = destinationBandwidthManager.bpInfo(_negationOperations.negatedBandwidthProvider)](src/test/NegationOperationsController.sol#L242)

src/test/NegationOperationsController.sol#L204-L244


 - [ ] ID-102
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance_scope_0 - _balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1617)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625


 - [ ] ID-103
[LayerCakeDestinationDeploy.withdraw()](src/core/LayerCakeDestinationDeploy.sol#L69-L74) ignores return value by [EnumerableMap.remove(_deposits,msg.sender)](src/core/LayerCakeDestinationDeploy.sol#L72)

src/core/LayerCakeDestinationDeploy.sol#L69-L74


 - [ ] ID-104
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance - _amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1187)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193


 - [ ] ID-105
[NegationOperationsController.storeInitialNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L120-L163) ignores return value by [(negated) = destinationBandwidthManager.bpInfo(_negationOperations.negatedBandwidthProvider)](src/test/NegationOperationsController.sol#L161)

src/test/NegationOperationsController.sol#L120-L163


 - [ ] ID-106
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L624-L632) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]).prepareExecutionId(_executionId,_preparer,_executionProof)](src/core/flattened/LayerCake.f.sol#L629-L631)

src/core/flattened/LayerCake.f.sol#L624-L632


 - [ ] ID-107
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/LayerCakeStorageManager.sol#L96-L104) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId)](src/core/LayerCakeStorageManager.sol#L103)

src/core/LayerCakeStorageManager.sol#L96-L104


 - [ ] ID-108
[UserController.storeStandardOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)](src/test/UserController.sol#L31-L39) ignores return value by [_token.approve(address(_layercake),_operations.amount + _operations.amount / _layercake.forwardedFeeDenominator())](src/test/UserController.sol#L35-L37)

src/test/UserController.sol#L31-L39


 - [ ] ID-109
[TestDestinationAddBandwidth.run()](script/test/TestDestinationAddBandwidth.s.sol#L23-L35) ignores return value by [layercake.token().approve(address(layercake),approvalAmount)](script/test/TestDestinationAddBandwidth.s.sol#L32)

script/test/TestDestinationAddBandwidth.s.sol#L23-L35


 - [ ] ID-110
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/LayerCakeStorageManager.sol#L119-L127) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]).prepareExecutionId(_executionId,_preparer,_executionProof)](src/core/LayerCakeStorageManager.sol#L124-L126)

src/core/LayerCakeStorageManager.sol#L119-L127


 - [ ] ID-111
[StdCheatsSafe.isFork()](lib/forge-std/src/StdCheats.sol#L572-L576) ignores return value by [vm.activeFork()](lib/forge-std/src/StdCheats.sol#L573-L575)

lib/forge-std/src/StdCheats.sol#L572-L576


 - [ ] ID-112
[UserController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)](src/test/UserController.sol#L41-L47) ignores return value by [_token.approve(address(_layercake),_operations.amount)](src/test/UserController.sol#L45)

src/test/UserController.sol#L41-L47


 - [ ] ID-113
[NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202) ignores return value by [(negated) = destinationBandwidthManager.bpInfo(_negationOperations.negatedBandwidthProvider)](src/test/NegationOperationsController.sol#L200)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-114
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) ignores return value by [(None,None,None,None,None,None,origincurrentTotalBandwidth,None) = originBandwidthManager.bpInfo(vm.addr(1000))](src/test/LayerCakeVerifiedSetupTest.t.sol#L57)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-115
[LayerCakeOriginDeploy.deposit(uint256)](src/core/LayerCakeOriginDeploy.sol#L35-L45) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,msg.sender)](src/core/LayerCakeOriginDeploy.sol#L39)

src/core/LayerCakeOriginDeploy.sol#L35-L45


 - [ ] ID-116
[LayerCakeOriginDeploy.deposit(uint256)](src/core/LayerCakeOriginDeploy.sol#L35-L45) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance + _amount)](src/core/LayerCakeOriginDeploy.sol#L40)

src/core/LayerCakeOriginDeploy.sol#L35-L45


 - [ ] ID-117
[stdStorageSafe.find(StdStorage)](lib/forge-std/src/StdStorage.sol#L32-L105) ignores return value by [(reads) = vm.accesses(address(who))](lib/forge-std/src/StdStorage.sol#L50)

lib/forge-std/src/StdStorage.sol#L32-L105


 - [ ] ID-118
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/LayerCakeDestinationDeploy.sol#L52-L67) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance + _balanceChange.amount)](src/core/LayerCakeDestinationDeploy.sol#L56)

src/core/LayerCakeDestinationDeploy.sol#L52-L67


 - [ ] ID-119
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCake.f.sol#L601-L609) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId)](src/core/flattened/LayerCake.f.sol#L608)

src/core/flattened/LayerCake.f.sol#L601-L609


 - [ ] ID-120
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,_balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1613)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625


 - [ ] ID-121
[LayerCakeNegationOperationsTest.testReverseInvalidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70) ignores return value by [n.storeInitialNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L58)

src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70


 - [ ] ID-122
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance + _balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1614)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1610-L1625


 - [ ] ID-123
[BandwidthProviderController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)](src/test/BandwidthProviderController.sol#L43-L49) ignores return value by [_token.approve(address(_layercake),_operations.amount)](src/test/BandwidthProviderController.sol#L47)

src/test/BandwidthProviderController.sol#L43-L49


 - [ ] ID-124
[StdUtils.getTokenBalances(address,address[])](lib/forge-std/src/StdUtils.sol#L150-L177) ignores return value by [(returnData) = multicall.aggregate(calls)](lib/forge-std/src/StdUtils.sol#L170)

lib/forge-std/src/StdUtils.sol#L150-L177


 - [ ] ID-125
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/LayerCakeDestinationDeploy.sol#L52-L67) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance_scope_0 - _balanceChange.amount)](src/core/LayerCakeDestinationDeploy.sol#L59)

src/core/LayerCakeDestinationDeploy.sol#L52-L67


 - [ ] ID-126
[BandwidthProviderController.addBandwidth(IERC20,LayerCake,uint256,uint256)](src/test/BandwidthProviderController.sol#L59-L65) ignores return value by [_token.approve(address(_layercake),_depositedAmount)](src/test/BandwidthProviderController.sol#L63)

src/test/BandwidthProviderController.sol#L59-L65


 - [ ] ID-127
[UserController.depositToLayerCakeOriginDeploy(IERC20,LayerCakeOriginDeploy,uint256)](src/test/UserController.sol#L53-L60) ignores return value by [_token.approve(address(_layerCakeOriginDeploy),_amount)](src/test/UserController.sol#L58)

src/test/UserController.sol#L53-L60


 - [ ] ID-128
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L744-L758) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(_operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L748)

src/core/flattened/LayerCake.f.sol#L744-L758


 - [ ] ID-129
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L101-L115) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(_operations.executionTime,executionId)](src/core/LayerCake.sol#L105)

src/core/LayerCake.sol#L101-L115


 - [ ] ID-130
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/LayerCakeDestinationDeploy.sol#L52-L67) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,_balanceChange.sender)](src/core/LayerCakeDestinationDeploy.sol#L55)

src/core/LayerCakeDestinationDeploy.sol#L52-L67


 - [ ] ID-131
[TestDeposit.run()](script/test/TestDeposit.s.sol#L28-L47) ignores return value by [originToken.approve(address(originDeploy),3 * depositAmount)](script/test/TestDeposit.s.sol#L39)

script/test/TestDeposit.s.sol#L28-L47


 - [ ] ID-132
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCakeStorageManager.f.sol#L216-L224) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId)](src/core/flattened/LayerCakeStorageManager.f.sol#L223)

src/core/flattened/LayerCakeStorageManager.f.sol#L216-L224


 - [ ] ID-133
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1627-L1632) ignores return value by [EnumerableMap.remove(_deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1630)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1627-L1632


## shadowing-local
Impact: Low
Confidence: High
 - [ ] ID-134
[LayerCakeTransportedToken.constructor(uint256,string,string)._name](src/core/LayerCakeTransportedToken.sol#L13) shadows:
	- [ERC20._name](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L45) (state variable)

src/core/LayerCakeTransportedToken.sol#L13


 - [ ] ID-135
[LayerCakeTransportedToken.constructor(uint256,string,string)._symbol](src/core/LayerCakeTransportedToken.sol#L13) shadows:
	- [ERC20._symbol](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L46) (state variable)

src/core/LayerCakeTransportedToken.sol#L13


## events-access
Impact: Low
Confidence: Medium
 - [ ] ID-136
[UserController.updateController(address)](src/test/UserController.sol#L27-L29) should emit an event for: 
	- [controller = _controller](src/test/UserController.sol#L28) 

src/test/UserController.sol#L27-L29


 - [ ] ID-137
[BandwidthProviderController.updateController(address)](src/test/BandwidthProviderController.sol#L25-L27) should emit an event for: 
	- [controller = _controller](src/test/BandwidthProviderController.sol#L26) 

src/test/BandwidthProviderController.sol#L25-L27


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-138
[UserController.constructor(address)._controller](src/test/UserController.sol#L16) lacks a zero-check on :
		- [controller = _controller](src/test/UserController.sol#L17)

src/test/UserController.sol#L16


 - [ ] ID-139
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/LayerCakeStorageSlot.sol#L29) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/LayerCakeStorageSlot.sol#L30)

src/core/LayerCakeStorageSlot.sol#L29


 - [ ] ID-140
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCakeStorageSlot.f.sol#L56) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCakeStorageSlot.f.sol#L57)

src/core/flattened/LayerCakeStorageSlot.f.sol#L56


 - [ ] ID-141
[LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/LayerCakeCalldataInterface.sol#L10) lacks a zero-check on :
		- [(success,result) = address(_recipient).call(_callData)](src/core/LayerCakeCalldataInterface.sol#L11)

src/core/LayerCakeCalldataInterface.sol#L10


 - [ ] ID-142
[LayerCakeBandwidthManager.constructor(address,uint256,uint256,uint256)._layerCakeContract](src/core/flattened/LayerCake.f.sol#L288) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCake.f.sol#L293)

src/core/flattened/LayerCake.f.sol#L288


 - [ ] ID-143
[LayerCakeStorageManager.constructor(address)._layerCakeContract](src/core/flattened/LayerCake.f.sol#L527) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCake.f.sol#L528)

src/core/flattened/LayerCake.f.sol#L527


 - [ ] ID-144
[LayerCakeStorageManager.constructor(address)._layerCakeContract](src/core/LayerCakeStorageManager.sol#L22) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/LayerCakeStorageManager.sol#L23)

src/core/LayerCakeStorageManager.sol#L22


 - [ ] ID-145
[UserController.updateController(address)._controller](src/test/UserController.sol#L27) lacks a zero-check on :
		- [controller = _controller](src/test/UserController.sol#L28)

src/test/UserController.sol#L27


 - [ ] ID-146
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCake.f.sol#L444) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCake.f.sol#L445)

src/core/flattened/LayerCake.f.sol#L444


 - [ ] ID-147
[LayerCakeOriginDeploy.constructor(address,address,uint256,uint256)._layerCakeAddress](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1160) lacks a zero-check on :
		- [layerCakeAddress = _layerCakeAddress](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1161)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1160


 - [ ] ID-148
[BandwidthProviderController.updateController(address)._controller](src/test/BandwidthProviderController.sol#L25) lacks a zero-check on :
		- [controller = _controller](src/test/BandwidthProviderController.sol#L26)

src/test/BandwidthProviderController.sol#L25


 - [ ] ID-149
[BandwidthProviderController.constructor(address)._controller](src/test/BandwidthProviderController.sol#L14) lacks a zero-check on :
		- [controller = _controller](src/test/BandwidthProviderController.sol#L15)

src/test/BandwidthProviderController.sol#L14


 - [ ] ID-150
[LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCakeCalldataInterface.f.sol#L83) lacks a zero-check on :
		- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L83


 - [ ] ID-151
[LayerCakeOriginDeploy.constructor(address,address,uint256,uint256)._layerCakeAddress](src/core/LayerCakeOriginDeploy.sol#L23) lacks a zero-check on :
		- [layerCakeAddress = _layerCakeAddress](src/core/LayerCakeOriginDeploy.sol#L24)

src/core/LayerCakeOriginDeploy.sol#L23


 - [ ] ID-152
[LayerCakeBandwidthManager.constructor(address,uint256,uint256,uint256)._layerCakeContract](src/core/LayerCakeBandwidthManager.sol#L29) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/LayerCakeBandwidthManager.sol#L34)

src/core/LayerCakeBandwidthManager.sol#L29


 - [ ] ID-153
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCakeStorageManager.f.sol#L59) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCakeStorageManager.f.sol#L60)

src/core/flattened/LayerCakeStorageManager.f.sol#L59


 - [ ] ID-154
[LayerCakeStorageManager.constructor(address)._layerCakeContract](src/core/flattened/LayerCakeStorageManager.f.sol#L142) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCakeStorageManager.f.sol#L143)

src/core/flattened/LayerCakeStorageManager.f.sol#L142


 - [ ] ID-155
[LayerCakeBandwidthManager.constructor(address,uint256,uint256,uint256)._layerCakeContract](src/core/flattened/LayerCakeBandwidthManager.f.sol#L31) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCakeBandwidthManager.f.sol#L36)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L31


 - [ ] ID-156
[LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCake.f.sol#L645) lacks a zero-check on :
		- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCake.f.sol#L646)

src/core/flattened/LayerCake.f.sol#L645


## incorrect-modifier
Impact: Low
Confidence: High
 - [ ] ID-157
Modifier [StdCheatsSafe.skipWhenForking()](lib/forge-std/src/StdCheats.sol#L578-L582) does not always execute _; or revert
lib/forge-std/src/StdCheats.sol#L578-L582


 - [ ] ID-158
Modifier [StdCheatsSafe.skipWhenNotForking()](lib/forge-std/src/StdCheats.sol#L584-L588) does not always execute _; or revert
lib/forge-std/src/StdCheats.sol#L584-L588


## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-159
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [UserController(originUser).depositToLayerCakeOriginDeploy(originToken,originDeploy,depositAmount)](src/test/VerifiedSetupController.sol#L128)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-160
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originToken.transfer(originBp,depositAmount)](src/test/VerifiedSetupController.sol#L207)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-161
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [BandwidthProviderController(originBp).addBandwidth(originToken,originLayercake,110000,100000)](src/test/VerifiedSetupController.sol#L209)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-162
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [destinationDeploy.setBalanceChange(_balanceChanges[i])](src/test/VerifiedSetupController.sol#L185)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-163
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [vm.etch(destinationBp,bandwidthProviderControllerCode)](src/test/VerifiedSetupController.sol#L216)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-164
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [BandwidthProviderController(destinationBp).addBandwidth(destinationToken,destinationLayercake,110000,100000)](src/test/VerifiedSetupController.sol#L217-L219)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-165
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originUser = address(vm.addr(_pk))](src/test/VerifiedSetupController.sol#L124)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-166
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [vm.etch(originBp,bandwidthProviderControllerCode)](src/test/VerifiedSetupController.sol#L208)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-167
[LayerCakeStandardOperationsTest.testStandardOperationsBandwidthCycled()](src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68) has external calls inside a loop: [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()) + i_scope_0)](src/test/LayerCakeStandardOperationsTest.t.sol#L66)

src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68


 - [ ] ID-168
[LayerCakeStandardOperationsTest.testFailStandardOperationsBandwidthExhausted()](src/test/LayerCakeStandardOperationsTest.t.sol#L49-L55) has external calls inside a loop: [s.standardOperationsTransferOnly(i)](src/test/LayerCakeStandardOperationsTest.t.sol#L52)

src/test/LayerCakeStandardOperationsTest.t.sol#L49-L55


 - [ ] ID-169
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originToken.transfer(originUser,depositAmount)](src/test/VerifiedSetupController.sol#L127)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-170
[LayerCakeStandardOperationsTest.testStandardOperationsBandwidthCycled()](src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68) has external calls inside a loop: [s.standardOperationsTransferOnly(i_scope_0)](src/test/LayerCakeStandardOperationsTest.t.sol#L65)

src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68


 - [ ] ID-171
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originUser_scope_1 = address(vm.addr(_pk_scope_0))](src/test/VerifiedSetupController.sol#L137)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-172
[LayerCakeStandardOperationsTest.testStandardOperationsBandwidthCycled()](src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68) has external calls inside a loop: [s.standardOperationsTransferOnly(i)](src/test/LayerCakeStandardOperationsTest.t.sol#L60)

src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68


 - [ ] ID-173
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [vm.etch(originUser,userControllerCode)](src/test/VerifiedSetupController.sol#L125)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-174
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originUser_scope_3 = address(vm.addr(_pk_scope_2))](src/test/VerifiedSetupController.sol#L195)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-175
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [UserController(originUser_scope_1).withdrawFromLayerCakeOriginDeploy(originDeploy,withdrawAmount)](src/test/VerifiedSetupController.sol#L138)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-176
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [originBp = vm.addr(_pk_scope_4)](src/test/VerifiedSetupController.sol#L206)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-177
[LayerCakeStandardOperationsTest.testStandardOperationsBandwidthCycled()](src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68) has external calls inside a loop: [vm.warp(c.deployTimestamp() + i)](src/test/LayerCakeStandardOperationsTest.t.sol#L61)

src/test/LayerCakeStandardOperationsTest.t.sol#L57-L68


 - [ ] ID-178
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [destinationBp = vm.addr(_pk_scope_5)](src/test/VerifiedSetupController.sol#L215)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-179
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) has external calls inside a loop: [UserController(originUser_scope_3).withdrawFromLayerCakeDestinationDeploy(destinationDeploy)](src/test/VerifiedSetupController.sol#L196)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-180
[LayerCakeStandardOperationsTest.testStandardOperationsTransferOnlyPartial()](src/test/LayerCakeStandardOperationsTest.t.sol#L70-L78) has external calls inside a loop: [s.standardOperationsTransferOnlyPartial(i,partialDenominator)](src/test/LayerCakeStandardOperationsTest.t.sol#L76)

src/test/LayerCakeStandardOperationsTest.t.sol#L70-L78


 - [ ] ID-181
[LayerCakeStandardOperationsTest.testFailStandardOperationsBandwidthExhausted()](src/test/LayerCakeStandardOperationsTest.t.sol#L49-L55) has external calls inside a loop: [vm.warp(c.deployTimestamp() + i)](src/test/LayerCakeStandardOperationsTest.t.sol#L53)

src/test/LayerCakeStandardOperationsTest.t.sol#L49-L55


## reentrancy-benign
Impact: Low
Confidence: Medium
 - [ ] ID-182
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-183
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-184
Reentrancy in [LayerCakeNegationOperationsTest.testValidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L31)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L34)
	- [negationOperations = n.storeInitialNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L35)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,1)](src/test/LayerCakeNegationOperationsTest.t.sol#L36)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44


 - [ ] ID-185
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L131)
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-186
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-187
Reentrancy in [LayerCakeBandwidthChangesTest.setUp()](src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeBandwidthChangesTest.t.sol#L25)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeBandwidthChangesTest.t.sol#L26)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeBandwidthChangesTest.t.sol#L26)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)
	- [s = new StandardOperationsController(c)](src/test/LayerCakeBandwidthChangesTest.t.sol#L27)

src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29


 - [ ] ID-188
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L115)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-189
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [fail()](lib/forge-std/src/StdAssertions.sol#L366)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [fail()](lib/forge-std/src/StdAssertions.sol#L366)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-190
Reentrancy in [LayerCakeVerifiedSetupTest.testSign()](src/test/LayerCakeVerifiedSetupTest.t.sol#L96-L104):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L97)
	- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L96-L104


 - [ ] ID-191
Reentrancy in [NegationOperationsController.storeSelfNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L204-L244):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L229)
	- [BandwidthProviderController(destinationBp1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L231-L233)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L234)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L204-L244


 - [ ] ID-192
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).cancelStandardOperations(c.destinationLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L244)
	- [BandwidthProviderController(originBp1).executeCancelStandardOperations(c.originLayercake(),executionProof)](src/test/StandardOperationsController.sol#L256)
	- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-193
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-194
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-195
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L49)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-196
Reentrancy in [LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182):
	External calls:
	- [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1174)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount + _amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1180)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1179)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1172-L1182


 - [ ] ID-197
Reentrancy in [LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth3()](src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L79)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L84)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L86)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L89)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100


 - [ ] ID-198
Reentrancy in [LayerCakeVerifiedSetupTest.testBlockTimestampChange()](src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L107)
	- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.warp(c.initialTimestamp() + 1)](src/test/LayerCakeVerifiedSetupTest.t.sol#L109)
	- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111


 - [ ] ID-199
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-200
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L174)
	- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-201
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-202
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-203
Reentrancy in [NegationOperationsController.storeInitialNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L120-L163):
	External calls:
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L126)
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L146)
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L148)
	- [UserController(destinationUser1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L150-L152)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L153)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L120-L163


 - [ ] ID-204
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-205
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-206
Reentrancy in [NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L187)
	- [BandwidthProviderController(vm.addr(2000)).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L189-L191)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L192)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(! negated)](src/test/NegationOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(! negated)](src/test/NegationOperationsController.sol#L201)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-207
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L213)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-208
Reentrancy in [DSTest.fail()](lib/forge-std/lib/ds-test/src/test.sol#L65-L76):
	External calls:
	- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

lib/forge-std/lib/ds-test/src/test.sol#L65-L76


 - [ ] ID-209
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-210
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-211
Reentrancy in [LayerCakeOriginDeploy.withdraw(uint256)](src/core/LayerCakeOriginDeploy.sol#L47-L56):
	External calls:
	- [originToken.transfer(msg.sender,_amount)](src/core/LayerCakeOriginDeploy.sol#L51)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount - _amount](src/core/LayerCakeOriginDeploy.sol#L54)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/LayerCakeOriginDeploy.sol#L53)

src/core/LayerCakeOriginDeploy.sol#L47-L56


 - [ ] ID-212
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-213
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-214
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-215
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-216
Reentrancy in [NegationOperationsController.storeInitialNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L120-L163):
	External calls:
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L126)
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L146)
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L148)
	- [UserController(destinationUser1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L150-L152)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L153)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L162)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L162)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L120-L163


 - [ ] ID-217
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-218
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-219
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-220
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-221
Reentrancy in [NegationOperationsController.createInvalidExecution()](src/test/NegationOperationsController.sol#L28-L52):
	External calls:
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),_invalidExecutionProof)](src/test/NegationOperationsController.sol#L45-L47)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L28-L52


 - [ ] ID-222
Reentrancy in [LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L32)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L37)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L39)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L42)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44


 - [ ] ID-223
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),_validExecutionProof)](src/test/NegationOperationsController.sol#L87-L89)
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-224
Reentrancy in [LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L47)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L52)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L56)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58


 - [ ] ID-225
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-226
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [fail()](lib/forge-std/src/StdAssertions.sol#L366)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [fail()](lib/forge-std/src/StdAssertions.sol#L373)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [fail()](lib/forge-std/src/StdAssertions.sol#L373)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-227
Reentrancy in [OriginDeploy.run()](script/src/OriginDeploy.s.sol#L30-L53):
	External calls:
	- [vm.startBroadcast(deployerPrivateKey)](script/src/OriginDeploy.s.sol#L38)
	State variables written after the call(s):
	- [originDeploy = new LayerCakeOriginDeploy(address(originLayercake),address(originLayercake.token()),depositWindow,originLayercake.depositCap())](script/src/OriginDeploy.s.sol#L41-L45)

script/src/OriginDeploy.s.sol#L30-L53


 - [ ] ID-228
Reentrancy in [LayerCakeStandardOperationsTest.setUp()](src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeStandardOperationsTest.t.sol#L24)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeStandardOperationsTest.t.sol#L25)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeStandardOperationsTest.t.sol#L25)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)
	- [s = new StandardOperationsController(c)](src/test/LayerCakeStandardOperationsTest.t.sol#L26)

src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28


 - [ ] ID-229
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-230
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-231
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L213)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-232
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L91)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-233
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-234
Reentrancy in [LayerCakeOriginDeploy.deposit(uint256)](src/core/LayerCakeOriginDeploy.sol#L35-L45):
	External calls:
	- [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/LayerCakeOriginDeploy.sol#L37)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount + _amount](src/core/LayerCakeOriginDeploy.sol#L43)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/LayerCakeOriginDeploy.sol#L42)

src/core/LayerCakeOriginDeploy.sol#L35-L45


 - [ ] ID-235
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-236
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-237
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-238
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-239
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-240
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-241
Reentrancy in [NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L187)
	- [BandwidthProviderController(vm.addr(2000)).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L189-L191)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L192)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-242
Reentrancy in [DestinationDeploy.run()](script/src/DestinationDeploy.s.sol#L53-L92):
	External calls:
	- [vm.startBroadcast(deployerPrivateKey)](script/src/DestinationDeploy.s.sol#L63)
	State variables written after the call(s):
	- [destinationDeploy = new LayerCakeDestinationDeploy(address(destinationLayercake),address(destinationToken),verificationHash,destinationLayercake.depositCap(),totalDepositAmount)](script/src/DestinationDeploy.s.sol#L65-L71)

script/src/DestinationDeploy.s.sol#L53-L92


 - [ ] ID-243
Reentrancy in [LayerCakeNegationOperationsTest.testReverseInvalidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L56)
	- [(validExecutionId,validExecutionProof) = n.createValidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L57)
	- [n.storeInitialNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L58)
	- [negationOperations = n.storeReverseNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L59)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L60)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L61)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L62)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70


 - [ ] ID-244
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-245
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-246
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-247
Reentrancy in [NegationOperationsController.executeValidNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.Operations,uint256)](src/test/NegationOperationsController.sol#L246-L263):
	External calls:
	- [BandwidthProviderController(originBp1).executeNegationOperations(c.originLayercake(),_negationExecutionProof,_invalidExecutionProof)](src/test/NegationOperationsController.sol#L259-L261)
	- [assertTrue(c.destinationLayercake().getExecutionValidity(originBp1,executionId,_negationExecutionProof))](src/test/NegationOperationsController.sol#L262)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.destinationLayercake().getExecutionValidity(originBp1,executionId,_negationExecutionProof))](src/test/NegationOperationsController.sol#L262)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L246-L263


 - [ ] ID-248
Reentrancy in [LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L124)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),100000)](src/test/LayerCakeNegationOperationsTest.t.sol#L133)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-249
Reentrancy in [LayerCakeNegationOperationsTest.testValidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L31)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L34)
	- [negationOperations = n.storeInitialNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L35)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,1)](src/test/LayerCakeNegationOperationsTest.t.sol#L36)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44


 - [ ] ID-250
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-251
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-252
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-253
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-254
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-255
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L174)
	- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-256
Reentrancy in [NegationOperationsController.storeSelfNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L204-L244):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L229)
	- [BandwidthProviderController(destinationBp1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L231-L233)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L234)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L243)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L243)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L204-L244


 - [ ] ID-257
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-258
Reentrancy in [LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193):
	External calls:
	- [originToken.transfer(msg.sender,_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1188)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount - _amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1191)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1190)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1184-L1193


 - [ ] ID-259
Reentrancy in [LayerCakeNegationOperationsTest.setUp()](src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeNegationOperationsTest.t.sol#L24)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeNegationOperationsTest.t.sol#L25)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeNegationOperationsTest.t.sol#L25)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)
	- [n = new NegationOperationsController(c)](src/test/LayerCakeNegationOperationsTest.t.sol#L26)

src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28


 - [ ] ID-260
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-261
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-262
Reentrancy in [StdCheatsSafe.noGasMetering()](lib/forge-std/src/StdCheats.sol#L590-L609):
	External calls:
	- [vm.pauseGasMetering()](lib/forge-std/src/StdCheats.sol#L591)
	State variables written after the call(s):
	- [gasMeteringOff = true](lib/forge-std/src/StdCheats.sol#L600)
	- [gasMeteringOff = false](lib/forge-std/src/StdCheats.sol#L606)

lib/forge-std/src/StdCheats.sol#L590-L609


 - [ ] ID-263
Reentrancy in [LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L124)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-264
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-265
Reentrancy in [LayerCakeNegationOperationsTest.testReverseInvalidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L56)
	- [(validExecutionId,validExecutionProof) = n.createValidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L57)
	- [n.storeInitialNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L58)
	- [negationOperations = n.storeReverseNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L59)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L60)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L61)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L62)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70


 - [ ] ID-266
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L115)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-267
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-268
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-269
Reentrancy in [LayerCakeVerifiedSetupTest.testBlockTimestampChange()](src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L107)
	- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111


 - [ ] ID-270
Reentrancy in [LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth2()](src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L61)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L66)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L68)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L71)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76


 - [ ] ID-271
Reentrancy in [TransportedTokenDeploy.run()](script/src/TransportedTokenDeploy.s.sol#L27-L52):
	External calls:
	- [vm.startBroadcast(deployerPrivateKey)](script/src/TransportedTokenDeploy.s.sol#L36)
	State variables written after the call(s):
	- [destinationToken = new LayerCakeTransportedToken(depositCap,originTokenName,originTokenSymbol)](script/src/TransportedTokenDeploy.s.sol#L38-L41)

script/src/TransportedTokenDeploy.s.sol#L27-L52


 - [ ] ID-272
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-273
Reentrancy in [TestTokenDeploy.run()](script/test/TestTokenDeploy.s.sol#L20-L47):
	External calls:
	- [vm.startBroadcast(deployerPrivateKey)](script/test/TestTokenDeploy.s.sol#L31)
	State variables written after the call(s):
	- [originToken = new TestWETH()](script/test/TestTokenDeploy.s.sol#L34)

script/test/TestTokenDeploy.s.sol#L20-L47


 - [ ] ID-274
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-275
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-276
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-277
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L91)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-278
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L49)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-279
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-280
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-281
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-282
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-283
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-284
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-285
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-286
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	State variables written after the call(s):
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [_failed = true](lib/forge-std/lib/ds-test/src/test.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-287
Reentrancy in [stdStorageSafe.find(StdStorage)](lib/forge-std/src/StdStorage.sol#L32-L105):
	External calls:
	- [vm.record()](lib/forge-std/src/StdStorage.sol#L43)
	- [(reads) = vm.accesses(address(who))](lib/forge-std/src/StdStorage.sol#L50)
	Event emitted after the call(s):
	- [SlotFound(who,fsig,keccak256(bytes)(abi.encodePacked(ins,field_depth)),uint256(reads[0]))](lib/forge-std/src/StdStorage.sol#L62)
	- [WARNING_UninitedSlot(who,uint256(reads[0]))](lib/forge-std/src/StdStorage.sol#L54)

lib/forge-std/src/StdStorage.sol#L32-L105


 - [ ] ID-288
Reentrancy in [NegationOperationsController.storeSelfNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L204-L244):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L229)
	- [BandwidthProviderController(destinationBp1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L231-L233)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L234)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a > b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L295)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
	- [log_named_uint(  Value a,a)](lib/forge-std/lib/ds-test/src/test.sol#L296)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
	- [log_named_uint(  Value b,b)](lib/forge-std/lib/ds-test/src/test.sol#L297)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)

src/test/NegationOperationsController.sol#L204-L244


 - [ ] ID-289
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-290
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L91)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L93)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-291
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-292
Reentrancy in [LayerCakeNegationOperationsTest.setUp()](src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeNegationOperationsTest.t.sol#L24)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeNegationOperationsTest.t.sol#L25)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeNegationOperationsTest.t.sol#L25)

src/test/LayerCakeNegationOperationsTest.t.sol#L23-L28


 - [ ] ID-293
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-294
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L728-L742):
	External calls:
	- [token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee)](src/core/flattened/LayerCake.f.sol#L735)
	- [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/flattened/LayerCake.f.sol#L739)
	- [_storeOperations(_operations)](src/core/flattened/LayerCake.f.sol#L741)
		- [storageManager.storeExecutionId(_operations.executionTime,executionId,_operations.sender,_operations.amount)](src/core/flattened/LayerCake.f.sol#L886)
	Event emitted after the call(s):
	- [OperationsStored(executionId,_operations)](src/core/flattened/LayerCake.f.sol#L887)
		- [_storeOperations(_operations)](src/core/flattened/LayerCake.f.sol#L741)

src/core/flattened/LayerCake.f.sol#L728-L742


 - [ ] ID-295
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).cancelStandardOperations(c.destinationLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L244)
	- [BandwidthProviderController(originBp1).executeCancelStandardOperations(c.originLayercake(),executionProof)](src/test/StandardOperationsController.sol#L256)
	- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),amount - standardOperations.fee)](src/test/StandardOperationsController.sol#L257)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-296
Reentrancy in [LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L124)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),100000)](src/test/LayerCakeNegationOperationsTest.t.sol#L133)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-297
Reentrancy in [LayerCakeNegationOperationsTest.testValidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L31)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L34)
	- [negationOperations = n.storeInitialNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L35)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,1)](src/test/LayerCakeNegationOperationsTest.t.sol#L36)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(negationOperations.amount - negationOperations.fee,2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L40-L43)

src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44


 - [ ] ID-298
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [address])](lib/forge-std/lib/ds-test/src/test.sol#L109)
		- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
	- [log_named_address(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L110)
		- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
	- [log_named_address(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L111)
		- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-299
Reentrancy in [LayerCakeNegationOperationsTest.testReverseInvalidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L56)
	- [(validExecutionId,validExecutionProof) = n.createValidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L57)
	- [n.storeInitialNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L58)
	- [negationOperations = n.storeReverseNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L59)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L60)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L61)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L62)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)

src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70


 - [ ] ID-300
Reentrancy in [LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L124)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L131)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-301
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-302
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L174)
	- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-303
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-304
Reentrancy in [LayerCakeVerifiedSetupTest.testBlockTimestampChange()](src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L107)
	- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)

src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111


 - [ ] ID-305
Reentrancy in [stdStorageSafe.find(StdStorage)](lib/forge-std/src/StdStorage.sol#L32-L105):
	External calls:
	- [vm.record()](lib/forge-std/src/StdStorage.sol#L43)
	- [(reads) = vm.accesses(address(who))](lib/forge-std/src/StdStorage.sol#L50)
	- [vm.store(who,reads[i],bytes32(7))](lib/forge-std/src/StdStorage.sol#L72)
	- [vm.store(who,reads[i],prev)](lib/forge-std/src/StdStorage.sol#L88)
	Event emitted after the call(s):
	- [SlotFound(who,fsig,keccak256(bytes)(abi.encodePacked(ins,field_depth)),uint256(reads[i]))](lib/forge-std/src/StdStorage.sol#L82)
	- [WARNING_UninitedSlot(who,uint256(reads[i]))](lib/forge-std/src/StdStorage.sol#L69)

lib/forge-std/src/StdStorage.sol#L32-L105


 - [ ] ID-306
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-307
Reentrancy in [LayerCakeVerifiedSetupTest.testSign()](src/test/LayerCakeVerifiedSetupTest.t.sol#L96-L104):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L97)
	- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [address])](lib/forge-std/lib/ds-test/src/test.sol#L109)
		- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)
	- [log_named_address(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L110)
		- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)
	- [log_named_address(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L111)
		- [assertEq(originBp1,signer)](src/test/LayerCakeVerifiedSetupTest.t.sol#L103)

src/test/LayerCakeVerifiedSetupTest.t.sol#L96-L104


 - [ ] ID-308
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-309
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L231-L245):
	External calls:
	- [storageManager.storeExecutionId(_operations.executionTime,executionId,_operations.sender,_operations.amount)](src/core/LayerCake.sol#L243)
	Event emitted after the call(s):
	- [OperationsStored(executionId,_operations)](src/core/LayerCake.sol#L244)

src/core/LayerCake.sol#L231-L245


 - [ ] ID-310
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-311
Reentrancy in [LayerCakeStandardOperationsTest.setUp()](src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeStandardOperationsTest.t.sol#L24)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeStandardOperationsTest.t.sol#L25)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeStandardOperationsTest.t.sol#L25)

src/test/LayerCakeStandardOperationsTest.t.sol#L23-L28


 - [ ] ID-312
Reentrancy in [LayerCakeNegationOperationsTest.testValidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L31)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L34)
	- [negationOperations = n.storeInitialNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L35)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,1)](src/test/LayerCakeNegationOperationsTest.t.sol#L36)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L37-L39)

src/test/LayerCakeNegationOperationsTest.t.sol#L30-L44


 - [ ] ID-313
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L91)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L92)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-314
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-315
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-316
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [address])](lib/forge-std/lib/ds-test/src/test.sol#L109)
		- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
	- [log_named_address(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L110)
		- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
	- [log_named_address(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L111)
		- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-317
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-318
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-319
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-320
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-321
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L85-L99):
	External calls:
	- [token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee)](src/core/LayerCake.sol#L92)
	- [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/LayerCake.sol#L96)
	- [_storeOperations(_operations)](src/core/LayerCake.sol#L98)
		- [storageManager.storeExecutionId(_operations.executionTime,executionId,_operations.sender,_operations.amount)](src/core/LayerCake.sol#L243)
	Event emitted after the call(s):
	- [OperationsStored(executionId,_operations)](src/core/LayerCake.sol#L244)
		- [_storeOperations(_operations)](src/core/LayerCake.sol#L98)

src/core/LayerCake.sol#L85-L99


 - [ ] ID-322
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-323
Reentrancy in [NegationOperationsController.createInvalidExecution()](src/test/NegationOperationsController.sol#L28-L52):
	External calls:
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),_invalidExecutionProof)](src/test/NegationOperationsController.sol#L45-L47)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)

src/test/NegationOperationsController.sol#L28-L52


 - [ ] ID-324
Reentrancy in [LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L47)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L52)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L56)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L57)

src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58


 - [ ] ID-325
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-326
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,msg.sender,_executionProof)](src/core/flattened/LayerCake.f.sol#L894-L895)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L898)
	- [token.transfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L899)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,_executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L901)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-327
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),_amount - fee)](src/test/StandardOperationsController.sol#L98)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-328
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [address])](lib/forge-std/lib/ds-test/src/test.sol#L109)
		- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
	- [log_named_address(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L110)
		- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
	- [log_named_address(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L111)
		- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-329
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-330
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-331
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L131)
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),_nonce * 9990)](src/test/StandardOperationsController.sol#L132)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-332
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-333
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-334
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-335
Reentrancy in [NegationOperationsController.storeInitialNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L120-L163):
	External calls:
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L126)
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L146)
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L148)
	- [UserController(destinationUser1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L150-L152)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L153)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a > b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L295)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
	- [log_named_uint(  Value a,a)](lib/forge-std/lib/ds-test/src/test.sol#L296)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
	- [log_named_uint(  Value b,b)](lib/forge-std/lib/ds-test/src/test.sol#L297)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)

src/test/NegationOperationsController.sol#L120-L163


 - [ ] ID-336
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bytes])](lib/forge-std/lib/ds-test/src/test.sol#L565)
		- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
	- [log(Error: Calls were not equal)](lib/forge-std/src/StdAssertions.sol#L363)
	- [log_named_bytes(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L566)
		- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
	- [log_named_bytes(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L567)
		- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
	- [log_named_bytes(  Left call revert data,returnDataA)](lib/forge-std/src/StdAssertions.sol#L364)
	- [log_named_bytes( Right call return data,returnDataB)](lib/forge-std/src/StdAssertions.sol#L365)
	- [log_named_string(Error,err)](lib/forge-std/lib/ds-test/src/test.sol#L573)
		- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-337
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-338
Reentrancy in [NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L187)
	- [BandwidthProviderController(vm.addr(2000)).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L189-L191)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L192)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a > b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L295)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
	- [log_named_uint(  Value a,a)](lib/forge-std/lib/ds-test/src/test.sol#L296)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
	- [log_named_uint(  Value b,b)](lib/forge-std/lib/ds-test/src/test.sol#L297)
		- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-339
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/LayerCake.sol#L247-L260):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,msg.sender,_executionProof)](src/core/LayerCake.sol#L251-L252)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/LayerCake.sol#L255)
	- [token.transfer(msg.sender,partialFee)](src/core/LayerCake.sol#L256)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,_executionProof,executionPrepared)](src/core/LayerCake.sol#L258)

src/core/LayerCake.sol#L247-L260


 - [ ] ID-340
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-341
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-342
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L115)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),991000)](src/test/LayerCakeNegationOperationsTest.t.sol#L117)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-343
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-344
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L776-L781):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,_bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L777)
	- [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/flattened/LayerCake.f.sol#L778)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,_bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L780)

src/core/flattened/LayerCake.f.sol#L776-L781


 - [ ] ID-345
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() != bytes32(0))](src/test/LayerCakeVerifiedSetupTest.t.sol#L84)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash())](src/test/LayerCakeVerifiedSetupTest.t.sol#L85)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L89)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),destinationDepositedAmount)](src/test/LayerCakeVerifiedSetupTest.t.sol#L90-L93)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-346
Reentrancy in [LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L32)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L37)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L39)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L42)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L43)

src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44


 - [ ] ID-347
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L85)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L87)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-348
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L49)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + _amount)](src/test/StandardOperationsController.sol#L51)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-349
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L119)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L120)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L121)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-350
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-351
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-352
Reentrancy in [NegationOperationsController.executeValidNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.Operations,uint256)](src/test/NegationOperationsController.sol#L246-L263):
	External calls:
	- [BandwidthProviderController(originBp1).executeNegationOperations(c.originLayercake(),_negationExecutionProof,_invalidExecutionProof)](src/test/NegationOperationsController.sol#L259-L261)
	- [assertTrue(c.destinationLayercake().getExecutionValidity(originBp1,executionId,_negationExecutionProof))](src/test/NegationOperationsController.sol#L262)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.destinationLayercake().getExecutionValidity(originBp1,executionId,_negationExecutionProof))](src/test/NegationOperationsController.sol#L262)

src/test/NegationOperationsController.sol#L246-L263


 - [ ] ID-353
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(returnDataA,returnDataB,Call revert data does not match)](lib/forge-std/src/StdAssertions.sol#L359)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [fail()](lib/forge-std/src/StdAssertions.sol#L366)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Calls were not equal)](lib/forge-std/src/StdAssertions.sol#L370)
	- [log_named_bytes(  Left call return data,returnDataA)](lib/forge-std/src/StdAssertions.sol#L371)
	- [log_named_bytes( Right call revert data,returnDataB)](lib/forge-std/src/StdAssertions.sol#L372)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-354
Reentrancy in [LayerCakeVerifiedSetupTest.testBlockTimestampChange()](src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111):
	External calls:
	- [vm.warp(c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L107)
	- [assertEq(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L108)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.warp(c.initialTimestamp() + 1)](src/test/LayerCakeVerifiedSetupTest.t.sol#L109)
	- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a > b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L295)
		- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)
	- [log_named_uint(  Value a,a)](lib/forge-std/lib/ds-test/src/test.sol#L296)
		- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)
	- [log_named_uint(  Value b,b)](lib/forge-std/lib/ds-test/src/test.sol#L297)
		- [assertGt(block.timestamp,c.initialTimestamp())](src/test/LayerCakeVerifiedSetupTest.t.sol#L110)

src/test/LayerCakeVerifiedSetupTest.t.sol#L106-L111


 - [ ] ID-355
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-356
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-357
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [address])](lib/forge-std/lib/ds-test/src/test.sol#L109)
		- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
	- [log_named_address(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L110)
		- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
	- [log_named_address(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L111)
		- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-358
Reentrancy in [LayerCakeNegationOperationsTest.testSelfNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L73)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L82)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L83-L84)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L86)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L87)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L88)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L89)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L90)

src/test/LayerCakeNegationOperationsTest.t.sol#L72-L94


 - [ ] ID-359
Reentrancy in [LayerCakeBandwidthChangesTest.setUp()](src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29):
	External calls:
	- [c = new VerifiedSetupController()](src/test/LayerCakeBandwidthChangesTest.t.sol#L25)
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeBandwidthChangesTest.t.sol#L26)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeBandwidthChangesTest.t.sol#L26)

src/test/LayerCakeBandwidthChangesTest.t.sol#L24-L29


 - [ ] ID-360
Reentrancy in [StandardOperationsController.fuzzStoreStandardOperations(uint16)](src/test/StandardOperationsController.sol#L28-L52):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/StandardOperationsController.sol#L29)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L31)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L37)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L38-L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L49)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L50)

src/test/StandardOperationsController.sol#L28-L52


 - [ ] ID-361
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-362
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L241)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-363
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L75)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(address(c.originDeploy())),0)](src/test/LayerCakeVerifiedSetupTest.t.sol#L81)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-364
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bytes32])](lib/forge-std/lib/ds-test/src/test.sol#L124)
		- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
	- [log_named_bytes32(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L125)
		- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
	- [log_named_bytes32(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L126)
		- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-365
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-366
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bool])](lib/forge-std/src/StdAssertions.sol#L30)
		- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
	- [log_named_string(      Left,true)](lib/forge-std/src/StdAssertions.sol#L31)
		- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
	- [log_named_string(      Left,false)](lib/forge-std/src/StdAssertions.sol#L31)
		- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
	- [log_named_string(     Right,true)](lib/forge-std/src/StdAssertions.sol#L32)
		- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
	- [log_named_string(     Right,false)](lib/forge-std/src/StdAssertions.sol#L32)
		- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-367
Reentrancy in [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L54-L99):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L56)
	- [c.originToken().transfer(originUser1,_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L61)
	- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),_amount + _amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L62-L64)

src/test/StandardOperationsController.sol#L54-L99


 - [ ] ID-368
Reentrancy in [NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L187)
	- [BandwidthProviderController(vm.addr(2000)).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L189-L191)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L192)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(! negated)](src/test/NegationOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(! negated)](src/test/NegationOperationsController.sol#L201)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-369
Reentrancy in [StandardOperationsController.standardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L101-L133):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L103)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L106)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L107-L109)

src/test/StandardOperationsController.sol#L101-L133


 - [ ] ID-370
Reentrancy in [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)](src/test/StandardOperationsController.sol#L221-L258):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L223)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L226)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L227-L229)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L239)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L240)

src/test/StandardOperationsController.sol#L221-L258


 - [ ] ID-371
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-372
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L213)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),0)](src/test/StandardOperationsController.sol#L217)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-373
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.negationRewardDenominator(),10 * c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L70)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.layerCakeContract(),address(c.destinationLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L73)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(destinationBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L74)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-374
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L874-L888):
	External calls:
	- [storageManager.storeExecutionId(_operations.executionTime,executionId,_operations.sender,_operations.amount)](src/core/flattened/LayerCake.f.sol#L886)
	Event emitted after the call(s):
	- [OperationsStored(executionId,_operations)](src/core/flattened/LayerCake.f.sol#L887)

src/core/flattened/LayerCake.f.sol#L874-L888


 - [ ] ID-375
Reentrancy in [LayerCakeNegationOperationsTest.testReverseInvalidNegation()](src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L56)
	- [(validExecutionId,validExecutionProof) = n.createValidExecution()](src/test/LayerCakeNegationOperationsTest.t.sol#L57)
	- [n.storeInitialNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L58)
	- [negationOperations = n.storeReverseNegationOperations(validExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L59)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L60)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L61)
	- [n.executeValidNegationOperations(validExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L62)
	- [assertEq(c.originToken().balanceOf(negationOperations.recipient),negationOperations.amount - negationOperations.fee)](src/test/LayerCakeNegationOperationsTest.t.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(negationOperations.amount - negationOperations.fee,101000)](src/test/LayerCakeNegationOperationsTest.t.sol#L66-L69)

src/test/LayerCakeNegationOperationsTest.t.sol#L55-L70


 - [ ] ID-376
Reentrancy in [LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth2()](src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L61)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L66)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L68)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L71)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L72)

src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76


 - [ ] ID-377
Reentrancy in [LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeNegationOperationsTest.t.sol#L97)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),890000)](src/test/LayerCakeNegationOperationsTest.t.sol#L106)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [(invalidExecutionId,invalidExecutionProof) = n.createInvalidExecutionRemoveAllBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L107-L108)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),990000)](src/test/LayerCakeNegationOperationsTest.t.sol#L110)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [negationOperations = n.storeSelfNegationOperations(invalidExecutionId)](src/test/LayerCakeNegationOperationsTest.t.sol#L111)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L112)
	- [vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption())](src/test/LayerCakeNegationOperationsTest.t.sol#L113)
	- [assertEq(c.originToken().balanceOf(destinationBp1),0)](src/test/LayerCakeNegationOperationsTest.t.sol#L114)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [n.executeValidNegationOperations(invalidExecutionProof,negationOperations,2)](src/test/LayerCakeNegationOperationsTest.t.sol#L115)
	- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(destinationBp1),2000)](src/test/LayerCakeNegationOperationsTest.t.sol#L116)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-378
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-379
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-380
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L47)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().depositCap(),c.depositCap())](src/test/LayerCakeVerifiedSetupTest.t.sol#L48)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.originLayercake().token()),address(c.originToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L51)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(address(c.destinationLayercake().token()),address(c.destinationToken()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L52)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.layerCakeContract(),address(c.originLayercake()))](src/test/LayerCakeVerifiedSetupTest.t.sol#L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.reorgAssumption(),c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L66)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthPeriod(),2 * c.reorgAssumption())](src/test/LayerCakeVerifiedSetupTest.t.sol#L67)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.bandwidthDepositDenominator(),c.bandwidthDepositDenominator())](src/test/LayerCakeVerifiedSetupTest.t.sol#L68)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(originBandwidthManager.defaultNegationCost(),c.defaultNegationCost())](src/test/LayerCakeVerifiedSetupTest.t.sol#L69)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-381
Reentrancy in [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177):
	External calls:
	- [assertEq(counterTester.counter(),0)](src/test/StandardOperationsController.sol#L137)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L140)
	- [c.originToken().transfer(originUser1,10000 + 10000 / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L141)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L162)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L163)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + 10000)](src/test/StandardOperationsController.sol#L164)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L174)
	- [assertEq(c.destinationToken().balanceOf(address(counterTester)),9990)](src/test/StandardOperationsController.sol#L175)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(counterTester.counter(),15)](src/test/StandardOperationsController.sol#L176)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-382
Reentrancy in [NegationOperationsController.storeSelfNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L204-L244):
	External calls:
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L229)
	- [BandwidthProviderController(destinationBp1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L231-L233)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L234)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L235)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L243)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(negated)](src/test/NegationOperationsController.sol#L243)

src/test/NegationOperationsController.sol#L204-L244


 - [ ] ID-383
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bool])](lib/forge-std/src/StdAssertions.sol#L30)
		- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
	- [log_named_string(      Left,true)](lib/forge-std/src/StdAssertions.sol#L31)
		- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
	- [log_named_string(      Left,false)](lib/forge-std/src/StdAssertions.sol#L31)
		- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
	- [log_named_string(     Right,true)](lib/forge-std/src/StdAssertions.sol#L32)
		- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
	- [log_named_string(     Right,false)](lib/forge-std/src/StdAssertions.sol#L32)
		- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-384
Reentrancy in [NegationOperationsController.createValidExecution()](src/test/NegationOperationsController.sol#L54-L93):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L59)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L62)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/NegationOperationsController.sol#L63-L65)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/NegationOperationsController.sol#L75)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/NegationOperationsController.sol#L76)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/NegationOperationsController.sol#L77)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),_validExecutionProof)](src/test/NegationOperationsController.sol#L87-L89)
	- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationUser1),9990)](src/test/NegationOperationsController.sol#L90)

src/test/NegationOperationsController.sol#L54-L93


 - [ ] ID-385
Reentrancy in [LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth3()](src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100):
	External calls:
	- [vm.warp(c.deployTimestamp())](src/test/LayerCakeBandwidthChangesTest.t.sol#L79)
	- [s.standardOperationsTransferOnly(1)](src/test/LayerCakeBandwidthChangesTest.t.sol#L84)
	- [vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()))](src/test/LayerCakeBandwidthChangesTest.t.sol#L86)
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),removedBandwidthAmount)](src/test/LayerCakeBandwidthChangesTest.t.sol#L89)
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(destinationBp1),1000010)](src/test/LayerCakeBandwidthChangesTest.t.sol#L90)

src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100


 - [ ] ID-386
Reentrancy in [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)](src/test/StandardOperationsController.sol#L179-L219):
	External calls:
	- [vm.etch(originUser1,c.userControllerCode())](src/test/StandardOperationsController.sol#L188)
	- [c.originToken().transfer(originUser1,amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L190)
	- [assertEq(c.originToken().balanceOf(originUser1),amount + amount / c.originLayercake().forwardedFeeDenominator())](src/test/StandardOperationsController.sol#L191-L193)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [UserController(originUser1).storeStandardOperations(c.originToken(),c.originLayercake(),standardOperations)](src/test/StandardOperationsController.sol#L197-L199)
	- [assertEq(c.originToken().balanceOf(originUser1),0)](src/test/StandardOperationsController.sol#L200)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originToken().balanceOf(address(c.originLayercake())),originLayercakeBalance + amount)](src/test/StandardOperationsController.sol#L201)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [BandwidthProviderController(destinationBp1).executeStandardOperations(c.destinationLayercake(),executionProof)](src/test/StandardOperationsController.sol#L213)
	- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [uint])](lib/forge-std/lib/ds-test/src/test.sol#L159)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)
	- [log_named_uint(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L160)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)
	- [log_named_uint(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L161)
		- [assertEq(c.destinationToken().balanceOf(address(vm.addr(4000))),9990)](src/test/StandardOperationsController.sol#L215)

src/test/StandardOperationsController.sol#L179-L219


 - [ ] ID-387
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/LayerCake.sol#L133-L138):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,_bandwidthAmount)](src/core/LayerCake.sol#L134)
	- [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/LayerCake.sol#L135)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,_bandwidthAmount)](src/core/LayerCake.sol#L137)

src/core/LayerCake.sol#L133-L138


 - [ ] ID-388
Reentrancy in [NegationOperationsController.storeInitialNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L120-L163):
	External calls:
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L126)
	- [vm.etch(destinationUser1,c.userControllerCode())](src/test/NegationOperationsController.sol#L146)
	- [vm.recordLogs()](src/test/NegationOperationsController.sol#L148)
	- [UserController(destinationUser1).storeNegationOperations(c.destinationToken(),c.destinationLayercake(),_negationOperations)](src/test/NegationOperationsController.sol#L150-L152)
	- [entries = vm.getRecordedLogs()](src/test/NegationOperationsController.sol#L153)
	- [assertGt(entries.length,0)](src/test/NegationOperationsController.sol#L154)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertTrue(negated)](src/test/NegationOperationsController.sol#L162)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: Assertion Failed)](lib/forge-std/lib/ds-test/src/test.sol#L95)
		- [assertTrue(negated)](src/test/NegationOperationsController.sol#L162)

src/test/NegationOperationsController.sol#L120-L163


 - [ ] ID-389
Reentrancy in [LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94):
	External calls:
	- [assertTrue(c.destinationDeploy().deployed())](src/test/LayerCakeVerifiedSetupTest.t.sol#L36)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().isDestinationChain(),false)](src/test/LayerCakeVerifiedSetupTest.t.sol#L39)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.destinationLayercake().isDestinationChain(),true)](src/test/LayerCakeVerifiedSetupTest.t.sol#L40)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().departingPathwayId(),c.destinationLayercake().arrivingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L43)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bytes32])](lib/forge-std/lib/ds-test/src/test.sol#L124)
		- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
	- [log_named_bytes32(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L125)
		- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)
	- [log_named_bytes32(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L126)
		- [assertEq(c.originLayercake().arrivingPathwayId(),c.destinationLayercake().departingPathwayId())](src/test/LayerCakeVerifiedSetupTest.t.sol#L44)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-390
Reentrancy in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	External calls:
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)
	- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
		- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)
	Event emitted after the call(s):
	- [log(Error: a == b not satisfied [bytes])](lib/forge-std/lib/ds-test/src/test.sol#L565)
		- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
	- [log_named_bytes(      Left,a)](lib/forge-std/lib/ds-test/src/test.sol#L566)
		- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
	- [log_named_bytes(     Right,b)](lib/forge-std/lib/ds-test/src/test.sol#L567)
		- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)
	- [log_named_string(Error,err)](lib/forge-std/lib/ds-test/src/test.sol#L573)
		- [assertEq(returnDataA,returnDataB,Call return data does not match)](lib/forge-std/src/StdAssertions.sol#L355)

lib/forge-std/src/StdAssertions.sol#L344-L375


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-391
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L102-L115) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L109)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L102-L115


 - [ ] ID-392
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/LayerCakeBandwidthManager.sol#L78-L96) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/LayerCakeBandwidthManager.sol#L85)
	- [bp.startTime == 0](src/core/LayerCakeBandwidthManager.sol#L86)

src/core/LayerCakeBandwidthManager.sol#L78-L96


 - [ ] ID-393
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L892)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-394
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L562-L585) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime() && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCake.f.sol#L579-L583)

src/core/flattened/LayerCake.f.sol#L562-L585


 - [ ] ID-395
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCake.f.sol#L410-L415) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCake.f.sol#L412)

src/core/flattened/LayerCake.f.sol#L410-L415


 - [ ] ID-396
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/LayerCake.sol#L247-L260) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionProof.operations.executionTime,EO2)](src/core/LayerCake.sol#L249)

src/core/LayerCake.sol#L247-L260


 - [ ] ID-397
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L339-L357) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCake.f.sol#L346)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L347)

src/core/flattened/LayerCake.f.sol#L339-L357


 - [ ] ID-398
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L359-L372) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCake.f.sol#L366)

src/core/flattened/LayerCake.f.sol#L359-L372


 - [ ] ID-399
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/LayerCakeBandwidthManager.sol#L113-L143) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == _invalidExecutionProofId,NB1)](src/core/LayerCakeBandwidthManager.sol#L122)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB2)](src/core/LayerCakeBandwidthManager.sol#L126)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB4)](src/core/LayerCakeBandwidthManager.sol#L134)
	- [require(bool,string)(_initialNegation == bp.negated,NB5)](src/core/LayerCakeBandwidthManager.sol#L138)

src/core/LayerCakeBandwidthManager.sol#L113-L143


 - [ ] ID-400
[LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCake.f.sol#L319-L337) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCake.f.sol#L322)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCake.f.sol#L323)
	- [_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L325)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCake.f.sol#L326)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount,PBP3)](src/core/flattened/LayerCake.f.sol#L330)

src/core/flattened/LayerCake.f.sol#L319-L337


 - [ ] ID-401
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L117-L151) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == _invalidExecutionProofId,NB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L126)
	- [bp.timeLastNegated > bp.timeLastActive && block.timestamp - bp.timeLastActive >= negationCostResetPeriod && bp.negationCounter > negationCounterReset && block.timestamp - bp.timeLastNegated < 2 * bandwidthPeriod](src/core/flattened/LayerCakeBandwidthManager.f.sol#L130-L132)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L134)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L142)
	- [require(bool,string)(_initialNegation == bp.negated,NB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L146)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L117-L151


 - [ ] ID-402
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/LayerCakeStorageManager.sol#L42-L55) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/LayerCakeStorageManager.sol#L50)
	- [thisStorageEpoch > storageEpoch](src/core/LayerCakeStorageManager.sol#L52)

src/core/LayerCakeStorageManager.sol#L42-L55


 - [ ] ID-403
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L89)
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L90)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100


 - [ ] ID-404
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L789-L794) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionTime,IF1)](src/core/flattened/LayerCake.f.sol#L790)

src/core/flattened/LayerCake.f.sol#L789-L794


 - [ ] ID-405
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/LayerCakeBandwidthManager.sol#L145-L150) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/LayerCakeBandwidthManager.sol#L147)

src/core/LayerCakeBandwidthManager.sol#L145-L150


 - [ ] ID-406
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L874-L888) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L875)
	- [require(bool,string)(_operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L876)
	- [require(bool,string)(_operations.amount >= 2 * _operations.fee,SO3)](src/core/flattened/LayerCake.f.sol#L878)
	- [require(bool,string)(_operations.amount >= _operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L880)
	- [require(bool,string)(! storageManager.getExecutionIdStored(_operations.executionTime,executionId),SO6)](src/core/flattened/LayerCake.f.sol#L885)

src/core/flattened/LayerCake.f.sol#L874-L888


 - [ ] ID-407
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L374-L408) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == _invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L383)
	- [bp.timeLastNegated > bp.timeLastActive && block.timestamp - bp.timeLastActive >= negationCostResetPeriod && bp.negationCounter > negationCounterReset && block.timestamp - bp.timeLastNegated < 2 * bandwidthPeriod](src/core/flattened/LayerCake.f.sol#L387-L389)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L391)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L399)
	- [require(bool,string)(_initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L403)

src/core/flattened/LayerCake.f.sol#L374-L408


 - [ ] ID-408
[LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)](src/core/LayerCakeBandwidthManager.sol#L58-L76) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/LayerCakeBandwidthManager.sol#L61)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/LayerCakeBandwidthManager.sol#L62)
	- [_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/LayerCakeBandwidthManager.sol#L64)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/LayerCakeBandwidthManager.sol#L65)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount,PBP3)](src/core/LayerCakeBandwidthManager.sol#L69)

src/core/LayerCakeBandwidthManager.sol#L58-L76


 - [ ] ID-409
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L177-L200) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime() && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCakeStorageManager.f.sol#L194-L198)

src/core/flattened/LayerCakeStorageManager.f.sol#L177-L200


 - [ ] ID-410
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/LayerCakeBandwidthManager.sol#L98-L111) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/LayerCakeBandwidthManager.sol#L105)

src/core/LayerCakeBandwidthManager.sol#L98-L111


 - [ ] ID-411
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/LayerCakeOriginDeploy.sol#L58-L63) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/LayerCakeOriginDeploy.sol#L59)

src/core/LayerCakeOriginDeploy.sol#L58-L63


 - [ ] ID-412
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/LayerCake.sol#L231-L245) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_operations.recipient != address(0),SO1)](src/core/LayerCake.sol#L232)
	- [require(bool,string)(_operations.sender == msg.sender,SO2)](src/core/LayerCake.sol#L233)
	- [require(bool,string)(_operations.amount >= 2 * _operations.fee,SO3)](src/core/LayerCake.sol#L235)
	- [require(bool,string)(_operations.amount >= _operations.fee,SO4)](src/core/LayerCake.sol#L237)
	- [require(bool,string)(! storageManager.getExecutionIdStored(_operations.executionTime,executionId),SO6)](src/core/LayerCake.sol#L242)

src/core/LayerCake.sol#L231-L245


 - [ ] ID-413
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/LayerCakeStorageManager.sol#L57-L80) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime() && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/LayerCakeStorageManager.sol#L74-L78)

src/core/LayerCakeStorageManager.sol#L57-L80


 - [ ] ID-414
[LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L62-L80) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L65)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCakeBandwidthManager.f.sol#L66)
	- [_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L68)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L69)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount,PBP3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L73)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L62-L80


 - [ ] ID-415
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L547-L560) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCake.f.sol#L555)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCake.f.sol#L557)

src/core/flattened/LayerCake.f.sol#L547-L560


 - [ ] ID-416
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L153-L158) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L155)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L153-L158


 - [ ] ID-417
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1200) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1196)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1200


 - [ ] ID-418
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/LayerCake.sol#L146-L151) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionTime,IF1)](src/core/LayerCake.sol#L147)

src/core/LayerCake.sol#L146-L151


 - [ ] ID-419
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCakeStorageManager.f.sol#L170)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCakeStorageManager.f.sol#L172)

src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-420
[safeconsole.log(uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L1901-L1924) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1906-L1916)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1918-L1923)

lib/forge-std/src/safeconsole.sol#L1901-L1924


 - [ ] ID-421
[safeconsole.log(bytes32,bytes32,uint256,bool)](lib/forge-std/src/safeconsole.sol#L12857-L12905) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12867-L12892)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12894-L12904)

lib/forge-std/src/safeconsole.sol#L12857-L12905


 - [ ] ID-422
[safeconsole.log(uint256,uint256,bool,address)](lib/forge-std/src/safeconsole.sol#L8978-L9005) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8984-L8996)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8998-L9004)

lib/forge-std/src/safeconsole.sol#L8978-L9005


 - [ ] ID-423
[safeconsole.log(bool,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L1421-L1458) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1428-L1448)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1450-L1457)

lib/forge-std/src/safeconsole.sol#L1421-L1458


 - [ ] ID-424
[safeconsole.log(uint256,address,bytes32)](lib/forge-std/src/safeconsole.sol#L1698-L1735) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1705-L1725)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1727-L1734)

lib/forge-std/src/safeconsole.sol#L1698-L1735


 - [ ] ID-425
[safeconsole.log(bytes32,address,uint256)](lib/forge-std/src/safeconsole.sol#L2206-L2243) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2213-L2233)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2235-L2242)

lib/forge-std/src/safeconsole.sol#L2206-L2243


 - [ ] ID-426
[safeconsole.log(bytes32,bytes32,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L12907-L12955) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12917-L12942)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12944-L12954)

lib/forge-std/src/safeconsole.sol#L12907-L12955


 - [ ] ID-427
[safeconsole.log(uint256,bool)](lib/forge-std/src/safeconsole.sol#L389-L408) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L393-L401)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L403-L407)

lib/forge-std/src/safeconsole.sol#L389-L408


 - [ ] ID-428
[safeconsole.log(bool,address,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L5476-L5517) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5484-L5506)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5508-L5516)

lib/forge-std/src/safeconsole.sol#L5476-L5517


 - [ ] ID-429
[safeconsole.log(address,bool,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L3810-L3851) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3818-L3840)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3842-L3850)

lib/forge-std/src/safeconsole.sol#L3810-L3851


 - [ ] ID-430
[safeconsole.log(bytes32,bytes32,address)](lib/forge-std/src/safeconsole.sol#L2617-L2661) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2626-L2649)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2651-L2660)

lib/forge-std/src/safeconsole.sol#L2617-L2661


 - [ ] ID-431
[safeconsole.log(uint256,uint256,uint256,bool)](lib/forge-std/src/safeconsole.sol#L9137-L9164) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9143-L9155)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9157-L9163)

lib/forge-std/src/safeconsole.sol#L9137-L9164


 - [ ] ID-432
[safeconsole.log(address,bytes32,address)](lib/forge-std/src/safeconsole.sol#L955-L992) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L962-L982)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L984-L991)

lib/forge-std/src/safeconsole.sol#L955-L992


 - [ ] ID-433
[safeconsole.log(address,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L916-L953) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L923-L943)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L945-L952)

lib/forge-std/src/safeconsole.sol#L916-L953


 - [ ] ID-434
[safeconsole.log(uint256,address)](lib/forge-std/src/safeconsole.sol#L368-L387) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L372-L380)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L382-L386)

lib/forge-std/src/safeconsole.sol#L368-L387


 - [ ] ID-435
[safeconsole.log(uint256,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L2004-L2041) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2011-L2031)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2033-L2040)

lib/forge-std/src/safeconsole.sol#L2004-L2041


 - [ ] ID-436
[safeconsole.log(bytes32,bytes32,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L12957-L13012) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12969-L12997)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12999-L13011)

lib/forge-std/src/safeconsole.sol#L12957-L13012


 - [ ] ID-437
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L645-L654) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L649-L651)

src/core/flattened/LayerCake.f.sol#L645-L654


 - [ ] ID-438
[safeconsole.log(bytes32,bytes32,bool,address)](lib/forge-std/src/safeconsole.sol#L12600-L12648) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12610-L12635)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12637-L12647)

lib/forge-std/src/safeconsole.sol#L12600-L12648


 - [ ] ID-439
[safeconsole.log(address,uint256,address)](lib/forge-std/src/safeconsole.sol#L841-L864) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L846-L856)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L858-L863)

lib/forge-std/src/safeconsole.sol#L841-L864


 - [ ] ID-440
[safeconsole.log(bytes32,bytes32,bool,bool)](lib/forge-std/src/safeconsole.sol#L12650-L12698) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12660-L12685)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12687-L12697)

lib/forge-std/src/safeconsole.sol#L12650-L12698


 - [ ] ID-441
[safeconsole.log(bool,uint256,bool,uint256)](lib/forge-std/src/safeconsole.sol#L6585-L6612) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6591-L6603)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6605-L6611)

lib/forge-std/src/safeconsole.sol#L6585-L6612


 - [ ] ID-442
[safeconsole.log(uint256,bool,address,bool)](lib/forge-std/src/safeconsole.sol#L8308-L8335) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8314-L8326)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8328-L8334)

lib/forge-std/src/safeconsole.sol#L8308-L8335


 - [ ] ID-443
[safeconsole.log(bool,bool,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L6261-L6302) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6269-L6291)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6293-L6301)

lib/forge-std/src/safeconsole.sol#L6261-L6302


 - [ ] ID-444
[safeconsole.log(address,bytes32,bool,uint256)](lib/forge-std/src/safeconsole.sol#L4780-L4821) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4788-L4810)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4812-L4820)

lib/forge-std/src/safeconsole.sol#L4780-L4821


 - [ ] ID-445
[safeconsole.log(uint256,uint256,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L9195-L9236) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9203-L9225)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9227-L9235)

lib/forge-std/src/safeconsole.sol#L9195-L9236


 - [ ] ID-446
[safeconsole.log(uint256,bytes32,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L10104-L10159) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10116-L10144)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10146-L10158)

lib/forge-std/src/safeconsole.sol#L10104-L10159


 - [ ] ID-447
[safeconsole.log(bytes32,bool,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L11392-L11440) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11402-L11427)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11429-L11439)

lib/forge-std/src/safeconsole.sol#L11392-L11440


 - [ ] ID-448
[safeconsole.log(bytes32,bytes32,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L13185-L13247) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13199-L13230)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13232-L13246)

lib/forge-std/src/safeconsole.sol#L13185-L13247


 - [ ] ID-449
[safeconsole.log(uint256,uint256,bool)](lib/forge-std/src/safeconsole.sol#L1876-L1899) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1881-L1891)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1893-L1898)

lib/forge-std/src/safeconsole.sol#L1876-L1899


 - [ ] ID-450
[safeconsole.log(address,bytes32)](lib/forge-std/src/safeconsole.sol#L235-L268) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L241-L259)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L261-L267)

lib/forge-std/src/safeconsole.sol#L235-L268


 - [ ] ID-451
[safeconsole.log(bool,bytes32,uint256,bool)](lib/forge-std/src/safeconsole.sol#L7367-L7408) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7375-L7397)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7399-L7407)

lib/forge-std/src/safeconsole.sol#L7367-L7408


 - [ ] ID-452
[safeconsole.log(bool,address,uint256,bool)](lib/forge-std/src/safeconsole.sol#L5548-L5575) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5554-L5566)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5568-L5574)

lib/forge-std/src/safeconsole.sol#L5548-L5575


 - [ ] ID-453
[safeconsole.log(address)](lib/forge-std/src/safeconsole.sol#L90-L105) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L93-L99)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L101-L104)

lib/forge-std/src/safeconsole.sol#L90-L105


 - [ ] ID-454
[safeconsole.log(bool,bytes32)](lib/forge-std/src/safeconsole.sol#L333-L366) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L339-L357)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L359-L365)

lib/forge-std/src/safeconsole.sol#L333-L366


 - [ ] ID-455
[safeconsole.log(address,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L1072-L1116) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1081-L1104)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1106-L1115)

lib/forge-std/src/safeconsole.sol#L1072-L1116


 - [ ] ID-456
[safeconsole.log(address,bytes32,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L5202-L5257) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5214-L5242)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5244-L5256)

lib/forge-std/src/safeconsole.sol#L5202-L5257


 - [ ] ID-457
[safeconsole.log(bytes32,bool,bool,address)](lib/forge-std/src/safeconsole.sol#L11084-L11125) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11092-L11114)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11116-L11124)

lib/forge-std/src/safeconsole.sol#L11084-L11125


 - [ ] ID-458
[safeconsole.log(uint256,bytes32,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L9861-L9902) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9869-L9891)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9893-L9901)

lib/forge-std/src/safeconsole.sol#L9861-L9902


 - [ ] ID-459
[safeconsole.log(address,address,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L3327-L3375) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3337-L3362)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3364-L3374)

lib/forge-std/src/safeconsole.sol#L3327-L3375


 - [ ] ID-460
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L83-L92) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeCalldataInterface.f.sol#L87-L89)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L83-L92


 - [ ] ID-461
[safeconsole.log(uint256,address,bool,address)](lib/forge-std/src/safeconsole.sol#L7840-L7867) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7846-L7858)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7860-L7866)

lib/forge-std/src/safeconsole.sol#L7840-L7867


 - [ ] ID-462
[safeconsole._sendLogPayload(uint256,uint256)](lib/forge-std/src/safeconsole.sol#L11-L18) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L14-L16)

lib/forge-std/src/safeconsole.sol#L11-L18


 - [ ] ID-463
[safeconsole.log(uint256,bool,bool,address)](lib/forge-std/src/safeconsole.sol#L8409-L8436) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8415-L8427)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8429-L8435)

lib/forge-std/src/safeconsole.sol#L8409-L8436


 - [ ] ID-464
[safeconsole.log(uint256,bytes32,bool,bool)](lib/forge-std/src/safeconsole.sol#L9639-L9680) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9647-L9669)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9671-L9679)

lib/forge-std/src/safeconsole.sol#L9639-L9680


 - [ ] ID-465
[safeconsole.log(uint256,bytes32,uint256,bool)](lib/forge-std/src/safeconsole.sol#L9818-L9859) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9826-L9848)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9850-L9858)

lib/forge-std/src/safeconsole.sol#L9818-L9859


 - [ ] ID-466
[safeconsole.log(bool)](lib/forge-std/src/safeconsole.sol#L107-L122) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L110-L116)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L118-L121)

lib/forge-std/src/safeconsole.sol#L107-L122


 - [ ] ID-467
[safeconsole.log(bool,bool,uint256,bool)](lib/forge-std/src/safeconsole.sol#L6117-L6144) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6123-L6135)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6137-L6143)

lib/forge-std/src/safeconsole.sol#L6117-L6144


 - [ ] ID-468
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L374-L384) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L379-L381)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L374-L384


 - [ ] ID-469
[StdCheatsSafe.deployCode(string,bytes)](lib/forge-std/src/StdCheats.sol#L486-L494) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L489-L491)

lib/forge-std/src/StdCheats.sol#L486-L494


 - [ ] ID-470
[safeconsole.log(bool,bytes32,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L7553-L7601) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7563-L7588)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7590-L7600)

lib/forge-std/src/safeconsole.sol#L7553-L7601


 - [ ] ID-471
[safeconsole.log(uint256,bytes32,address,uint256)](lib/forge-std/src/safeconsole.sol#L9503-L9544) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9511-L9533)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9535-L9543)

lib/forge-std/src/safeconsole.sol#L9503-L9544


 - [ ] ID-472
[safeconsole.log(uint256,bool,bool,uint256)](lib/forge-std/src/safeconsole.sol#L8467-L8494) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8473-L8485)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8487-L8493)

lib/forge-std/src/safeconsole.sol#L8467-L8494


 - [ ] ID-473
[safeconsole.log(bool,uint256,address,bytes32)](lib/forge-std/src/safeconsole.sol#L6484-L6525) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6492-L6514)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6516-L6524)

lib/forge-std/src/safeconsole.sol#L6484-L6525


 - [ ] ID-474
[safeconsole.log(bytes32,uint256,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L12286-L12334) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12296-L12321)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12323-L12333)

lib/forge-std/src/safeconsole.sol#L12286-L12334


 - [ ] ID-475
[safeconsole.log(address,address,address,address)](lib/forge-std/src/safeconsole.sol#L2808-L2835) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2814-L2826)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2828-L2834)

lib/forge-std/src/safeconsole.sol#L2808-L2835


 - [ ] ID-476
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L376-L386) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L381-L383)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L376-L386


 - [ ] ID-477
[safeconsole.log(address,bool,bool,address)](lib/forge-std/src/safeconsole.sol#L3507-L3534) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3513-L3525)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3527-L3533)

lib/forge-std/src/safeconsole.sol#L3507-L3534


 - [ ] ID-478
[safeconsole.log(address,bool,bool)](lib/forge-std/src/safeconsole.sol#L752-L775) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L757-L767)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L769-L774)

lib/forge-std/src/safeconsole.sol#L752-L775


 - [ ] ID-479
[safeconsole.log(bytes32,bytes32,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L13128-L13183) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13140-L13168)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13170-L13182)

lib/forge-std/src/safeconsole.sol#L13128-L13183


 - [ ] ID-480
[safeconsole.log(bytes32,address,bool)](lib/forge-std/src/safeconsole.sol#L2167-L2204) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2174-L2194)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2196-L2203)

lib/forge-std/src/safeconsole.sol#L2167-L2204


 - [ ] ID-481
[safeconsole.log(address,address,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L3025-L3066) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3033-L3055)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3057-L3065)

lib/forge-std/src/safeconsole.sol#L3025-L3066


 - [ ] ID-482
[safeconsole.log(bytes32,uint256,uint256,address)](lib/forge-std/src/safeconsole.sol#L12007-L12048) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12015-L12037)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12039-L12047)

lib/forge-std/src/safeconsole.sol#L12007-L12048


 - [ ] ID-483
[DSTest.hasHEVMContext()](lib/forge-std/lib/ds-test/src/test.sol#L78-L84) uses assembly
	- [INLINE ASM](lib/forge-std/lib/ds-test/src/test.sol#L80-L82)

lib/forge-std/lib/ds-test/src/test.sol#L78-L84


 - [ ] ID-484
[safeconsole.log(uint256,uint256,address,bytes32)](lib/forge-std/src/safeconsole.sol#L8935-L8976) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8943-L8965)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8967-L8975)

lib/forge-std/src/safeconsole.sol#L8935-L8976


 - [ ] ID-485
[console2._sendLogPayloadView(bytes)](lib/forge-std/src/console2.sol#L24-L32) uses assembly
	- [INLINE ASM](lib/forge-std/src/console2.sol#L28-L31)

lib/forge-std/src/console2.sol#L24-L32


 - [ ] ID-486
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L524-L534) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L529-L531)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L524-L534


 - [ ] ID-487
[safeconsole.log(uint256,address,uint256,bool)](lib/forge-std/src/safeconsole.sol#L7999-L8026) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8005-L8017)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8019-L8025)

lib/forge-std/src/safeconsole.sol#L7999-L8026


 - [ ] ID-488
[safeconsole.log(bool,bytes32,address)](lib/forge-std/src/safeconsole.sol#L1460-L1497) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1467-L1487)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1489-L1496)

lib/forge-std/src/safeconsole.sol#L1460-L1497


 - [ ] ID-489
[safeconsole.log(address,address,bool)](lib/forge-std/src/safeconsole.sol#L638-L661) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L643-L653)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L655-L660)

lib/forge-std/src/safeconsole.sol#L638-L661


 - [ ] ID-490
[safeconsole.log(address,bool,bool,bool)](lib/forge-std/src/safeconsole.sol#L3536-L3563) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3542-L3554)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3556-L3562)

lib/forge-std/src/safeconsole.sol#L3536-L3563


 - [ ] ID-491
[safeconsole.log(bool,bytes32,address,uint256)](lib/forge-std/src/safeconsole.sol#L7052-L7093) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7060-L7082)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7084-L7092)

lib/forge-std/src/safeconsole.sol#L7052-L7093


 - [ ] ID-492
[safeconsole.log(bytes32,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L2571-L2615) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2580-L2603)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2605-L2614)

lib/forge-std/src/safeconsole.sol#L2571-L2615


 - [ ] ID-493
[safeconsole.log(bool,bool,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L6146-L6173) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6152-L6164)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6166-L6172)

lib/forge-std/src/safeconsole.sol#L6146-L6173


 - [ ] ID-494
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L526-L536) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L531-L533)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L526-L536


 - [ ] ID-495
[safeconsole.log.asm_0.writeString()](lib/forge-std/src/safeconsole.sol#L13200-L13206) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13200-L13206)

lib/forge-std/src/safeconsole.sol#L13200-L13206


 - [ ] ID-496
[safeconsole.log(bytes32,uint256,address,uint256)](lib/forge-std/src/safeconsole.sol#L11735-L11776) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11743-L11765)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11767-L11775)

lib/forge-std/src/safeconsole.sol#L11735-L11776


 - [ ] ID-497
[safeconsole.log(bytes32,address,uint256,address)](lib/forge-std/src/safeconsole.sol#L10519-L10560) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10527-L10549)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10551-L10559)

lib/forge-std/src/safeconsole.sol#L10519-L10560


 - [ ] ID-498
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L450-L460) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L455-L457)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L450-L460


 - [ ] ID-499
[console2._castLogPayloadViewToPure(function(bytes))](lib/forge-std/src/console2.sol#L12-L18) uses assembly
	- [INLINE ASM](lib/forge-std/src/console2.sol#L15-L17)

lib/forge-std/src/console2.sol#L12-L18


 - [ ] ID-500
[safeconsole.log(address,bool,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L3724-L3765) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3732-L3754)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3756-L3764)

lib/forge-std/src/safeconsole.sol#L3724-L3765


 - [ ] ID-501
[safeconsole.log(address,bool,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L3695-L3722) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3701-L3713)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3715-L3721)

lib/forge-std/src/safeconsole.sol#L3695-L3722


 - [ ] ID-502
[safeconsole.log(uint256,bool,bytes32,address)](lib/forge-std/src/safeconsole.sol#L8669-L8710) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8677-L8699)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8701-L8709)

lib/forge-std/src/safeconsole.sol#L8669-L8710


 - [ ] ID-503
[safeconsole.log(bytes32,bool,address,bytes32)](lib/forge-std/src/safeconsole.sol#L11034-L11082) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11044-L11069)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11071-L11081)

lib/forge-std/src/safeconsole.sol#L11034-L11082


 - [ ] ID-504
[safeconsole.log(address,bytes32,uint256,address)](lib/forge-std/src/safeconsole.sol#L4873-L4914) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4881-L4903)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4905-L4913)

lib/forge-std/src/safeconsole.sol#L4873-L4914


 - [ ] ID-505
[safeconsole.log(address,uint256,bool)](lib/forge-std/src/safeconsole.sol#L866-L889) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L871-L881)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L883-L888)

lib/forge-std/src/safeconsole.sol#L866-L889


 - [ ] ID-506
[safeconsole.log(bytes32,address,address,bool)](lib/forge-std/src/safeconsole.sol#L10204-L10245) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10212-L10234)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10236-L10244)

lib/forge-std/src/safeconsole.sol#L10204-L10245


 - [ ] ID-507
[safeconsole.log(bytes32,uint256,bool,uint256)](lib/forge-std/src/safeconsole.sol#L11914-L11955) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11922-L11944)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11946-L11954)

lib/forge-std/src/safeconsole.sol#L11914-L11955


 - [ ] ID-508
[safeconsole.log(bool,bytes32,bytes32,address)](lib/forge-std/src/safeconsole.sol#L7503-L7551) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7513-L7538)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7540-L7550)

lib/forge-std/src/safeconsole.sol#L7503-L7551


 - [ ] ID-509
[stdStorage.checked_write(StdStorage,bool)](lib/forge-std/src/StdStorage.sol#L246-L253) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdStorage.sol#L249-L251)

lib/forge-std/src/StdStorage.sol#L246-L253


 - [ ] ID-510
[safeconsole.log(address,bool,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L3853-L3894) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3861-L3883)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3885-L3893)

lib/forge-std/src/safeconsole.sol#L3853-L3894


 - [ ] ID-511
[safeconsole.log(address,bool,bool,uint256)](lib/forge-std/src/safeconsole.sol#L3565-L3592) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3571-L3583)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3585-L3591)

lib/forge-std/src/safeconsole.sol#L3565-L3592


 - [ ] ID-512
[Strings.toString(uint256)](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L24-L44) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L30-L32)
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L36-L38)

lib/openzeppelin-contracts/contracts/utils/Strings.sol#L24-L44


 - [ ] ID-513
[safeconsole.log(address,bytes32,address,bool)](lib/forge-std/src/safeconsole.sol#L4558-L4599) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4566-L4588)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4590-L4598)

lib/forge-std/src/safeconsole.sol#L4558-L4599


 - [ ] ID-514
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L432-L442) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L437-L439)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L432-L442


 - [ ] ID-515
[safeconsole.log(bytes32,bytes32,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L12750-L12805) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12762-L12790)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12792-L12804)

lib/forge-std/src/safeconsole.sol#L12750-L12805


 - [ ] ID-516
[safeconsole.log(bytes32,address,bool,uint256)](lib/forge-std/src/safeconsole.sol#L10426-L10467) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10434-L10456)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10458-L10466)

lib/forge-std/src/safeconsole.sol#L10426-L10467


 - [ ] ID-517
[safeconsole.log(address,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L802-L839) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L809-L829)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L831-L838)

lib/forge-std/src/safeconsole.sol#L802-L839


 - [ ] ID-518
[safeconsole.log(address,address,address,bool)](lib/forge-std/src/safeconsole.sol#L2837-L2864) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2843-L2855)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2857-L2863)

lib/forge-std/src/safeconsole.sol#L2837-L2864


 - [ ] ID-519
[safeconsole.log(uint256,bytes32,address)](lib/forge-std/src/safeconsole.sol#L1965-L2002) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1972-L1992)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1994-L2001)

lib/forge-std/src/safeconsole.sol#L1965-L2002


 - [ ] ID-520
[safeconsole.log(uint256,address,address,bytes32)](lib/forge-std/src/safeconsole.sol#L7797-L7838) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7805-L7827)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7829-L7837)

lib/forge-std/src/safeconsole.sol#L7797-L7838


 - [ ] ID-521
[safeconsole.log(address,address,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L3155-L3196) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3163-L3185)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3187-L3195)

lib/forge-std/src/safeconsole.sol#L3155-L3196


 - [ ] ID-522
[safeconsole.log(bool,bool,bool)](lib/forge-std/src/safeconsole.sol#L1257-L1280) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1262-L1272)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1274-L1279)

lib/forge-std/src/safeconsole.sol#L1257-L1280


 - [ ] ID-523
[safeconsole.log(bytes32,address,bytes32)](lib/forge-std/src/safeconsole.sol#L2245-L2289) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2254-L2277)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2279-L2288)

lib/forge-std/src/safeconsole.sol#L2245-L2289


 - [ ] ID-524
[safeconsole.log(bytes32,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L2663-L2707) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2672-L2695)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2697-L2706)

lib/forge-std/src/safeconsole.sol#L2663-L2707


 - [ ] ID-525
[safeconsole.log(uint256,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L2082-L2126) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2091-L2114)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2116-L2125)

lib/forge-std/src/safeconsole.sol#L2082-L2126


 - [ ] ID-526
[safeconsole.log(address,bool)](lib/forge-std/src/safeconsole.sol#L193-L212) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L197-L205)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L207-L211)

lib/forge-std/src/safeconsole.sol#L193-L212


 - [ ] ID-527
[safeconsole.log(uint256,bool,address,uint256)](lib/forge-std/src/safeconsole.sol#L8337-L8364) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8343-L8355)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8357-L8363)

lib/forge-std/src/safeconsole.sol#L8337-L8364


 - [ ] ID-528
[safeconsole.log(bool,address,bool,uint256)](lib/forge-std/src/safeconsole.sol#L5447-L5474) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5453-L5465)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5467-L5473)

lib/forge-std/src/safeconsole.sol#L5447-L5474


 - [ ] ID-529
[safeconsole.log(bytes32,uint256,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L12136-L12184) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12146-L12171)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12173-L12183)

lib/forge-std/src/safeconsole.sol#L12136-L12184


 - [ ] ID-530
[safeconsole.log(bool,address,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L5577-L5604) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5583-L5595)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5597-L5603)

lib/forge-std/src/safeconsole.sol#L5577-L5604


 - [ ] ID-531
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L823-L833) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L828-L830)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L823-L833


 - [ ] ID-532
[safeconsole.log(bytes32,uint256,bytes32,address)](lib/forge-std/src/safeconsole.sol#L12186-L12234) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12196-L12221)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12223-L12233)

lib/forge-std/src/safeconsole.sol#L12186-L12234


 - [ ] ID-533
[safeconsole.log(bytes32,address,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L10648-L10696) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10658-L10683)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10685-L10695)

lib/forge-std/src/safeconsole.sol#L10648-L10696


 - [ ] ID-534
[safeconsole.log(address,bool,bytes32,address)](lib/forge-std/src/safeconsole.sol#L3767-L3808) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3775-L3797)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3799-L3807)

lib/forge-std/src/safeconsole.sol#L3767-L3808


 - [ ] ID-535
[StdCheatsSafe.deployCode(string,bytes,uint256)](lib/forge-std/src/StdCheats.sol#L507-L515) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L510-L512)

lib/forge-std/src/StdCheats.sol#L507-L515


 - [ ] ID-536
[safeconsole.log(address,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L1033-L1070) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1040-L1060)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1062-L1069)

lib/forge-std/src/safeconsole.sol#L1033-L1070


 - [ ] ID-537
[safeconsole.log(address,uint256,address,uint256)](lib/forge-std/src/safeconsole.sol#L4004-L4031) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4010-L4022)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4024-L4030)

lib/forge-std/src/safeconsole.sol#L4004-L4031


 - [ ] ID-538
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L448-L458) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L453-L455)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L448-L458


 - [ ] ID-539
[safeconsole.log(address,address,address,uint256)](lib/forge-std/src/safeconsole.sol#L2866-L2893) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2872-L2884)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2886-L2892)

lib/forge-std/src/safeconsole.sol#L2866-L2893


 - [ ] ID-540
[safeconsole.log(bytes32,uint256,uint256,bool)](lib/forge-std/src/safeconsole.sol#L12050-L12091) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12058-L12080)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12082-L12090)

lib/forge-std/src/safeconsole.sol#L12050-L12091


 - [ ] ID-541
[safeconsole.log(bool,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L1499-L1536) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1506-L1526)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1528-L1535)

lib/forge-std/src/safeconsole.sol#L1499-L1536


 - [ ] ID-542
[safeconsole._memcopy(uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L26-L33) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L29-L31)

lib/forge-std/src/safeconsole.sol#L26-L33


 - [ ] ID-543
[safeconsole.log(address,address,bool,uint256)](lib/forge-std/src/safeconsole.sol#L2996-L3023) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3002-L3014)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3016-L3022)

lib/forge-std/src/safeconsole.sol#L2996-L3023


 - [ ] ID-544
[StdUtils.getTokenBalances(address,address[])](lib/forge-std/src/StdUtils.sol#L150-L177) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdUtils.sol#L156-L158)

lib/forge-std/src/StdUtils.sol#L150-L177


 - [ ] ID-545
[safeconsole.log(bool,uint256,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L6614-L6655) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6622-L6644)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6646-L6654)

lib/forge-std/src/safeconsole.sol#L6614-L6655


 - [ ] ID-546
[safeconsole._sendLogPayloadView(uint256,uint256)](lib/forge-std/src/safeconsole.sol#L20-L24) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L21-L23)

lib/forge-std/src/safeconsole.sol#L20-L24


 - [ ] ID-547
[safeconsole.log(bool,uint256,uint256,bool)](lib/forge-std/src/safeconsole.sol#L6686-L6713) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6692-L6704)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6706-L6712)

lib/forge-std/src/safeconsole.sol#L6686-L6713


 - [ ] ID-548
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1115-L1125) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1122)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1115-L1125


 - [ ] ID-549
[safeconsole.log(bool,uint256,bytes32,address)](lib/forge-std/src/safeconsole.sol#L6787-L6828) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6795-L6817)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6819-L6827)

lib/forge-std/src/safeconsole.sol#L6787-L6828


 - [ ] ID-550
[console._sendLogPayload(bytes)](lib/forge-std/src/console.sol#L7-L15) uses assembly
	- [INLINE ASM](lib/forge-std/src/console.sol#L11-L14)

lib/forge-std/src/console.sol#L7-L15


 - [ ] ID-551
[safeconsole.log(bool,bool,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L6347-L6395) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6357-L6382)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6384-L6394)

lib/forge-std/src/safeconsole.sol#L6347-L6395


 - [ ] ID-552
[safeconsole.log(uint256,bytes32,address,bool)](lib/forge-std/src/safeconsole.sol#L9460-L9501) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9468-L9490)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9492-L9500)

lib/forge-std/src/safeconsole.sol#L9460-L9501


 - [ ] ID-553
[safeconsole.log(bool,address,address,bytes32)](lib/forge-std/src/safeconsole.sol#L5346-L5387) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5354-L5376)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5378-L5386)

lib/forge-std/src/safeconsole.sol#L5346-L5387


 - [ ] ID-554
[safeconsole.log(uint256,address,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L8186-L8227) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8194-L8216)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8218-L8226)

lib/forge-std/src/safeconsole.sol#L8186-L8227


 - [ ] ID-555
[safeconsole.log(bool,address,address,address)](lib/forge-std/src/safeconsole.sol#L5259-L5286) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5265-L5277)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5279-L5285)

lib/forge-std/src/safeconsole.sol#L5259-L5286


 - [ ] ID-556
[safeconsole.log(bool,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L1577-L1621) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1586-L1609)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1611-L1620)

lib/forge-std/src/safeconsole.sol#L1577-L1621


 - [ ] ID-557
[safeconsole.log(uint256,address,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L8028-L8055) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8034-L8046)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8048-L8054)

lib/forge-std/src/safeconsole.sol#L8028-L8055


 - [ ] ID-558
[safeconsole.log(bool,bool,bool,uint256)](lib/forge-std/src/safeconsole.sol#L6016-L6043) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6022-L6034)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6036-L6042)

lib/forge-std/src/safeconsole.sol#L6016-L6043


 - [ ] ID-559
[safeconsole.log(bool,uint256,bool)](lib/forge-std/src/safeconsole.sol#L1371-L1394) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1376-L1386)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1388-L1393)

lib/forge-std/src/safeconsole.sol#L1371-L1394


 - [ ] ID-560
[safeconsole.log(bytes32,bool,address,bool)](lib/forge-std/src/safeconsole.sol#L10948-L10989) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10956-L10978)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10980-L10988)

lib/forge-std/src/safeconsole.sol#L10948-L10989


 - [ ] ID-561
[safeconsole.log(uint256,bytes32,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L9904-L9952) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9914-L9939)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9941-L9951)

lib/forge-std/src/safeconsole.sol#L9904-L9952


 - [ ] ID-562
[safeconsole.log(uint256,bytes32,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L10004-L10052) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10014-L10039)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10041-L10051)

lib/forge-std/src/safeconsole.sol#L10004-L10052


 - [ ] ID-563
[StdCheatsSafe.deployCode(string)](lib/forge-std/src/StdCheats.sol#L496-L504) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L499-L501)

lib/forge-std/src/StdCheats.sol#L496-L504


 - [ ] ID-564
[safeconsole.log(address,address,bool,address)](lib/forge-std/src/safeconsole.sol#L2938-L2965) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2944-L2956)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2958-L2964)

lib/forge-std/src/safeconsole.sol#L2938-L2965


 - [ ] ID-565
[safeconsole.log(address,address,address)](lib/forge-std/src/safeconsole.sol#L613-L636) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L618-L628)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L630-L635)

lib/forge-std/src/safeconsole.sol#L613-L636


 - [ ] ID-566
[safeconsole.log(bytes32,address,address,bytes32)](lib/forge-std/src/safeconsole.sol#L10290-L10338) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10300-L10325)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10327-L10337)

lib/forge-std/src/safeconsole.sol#L10290-L10338


 - [ ] ID-567
[safeconsole.log(bytes32,bool,address)](lib/forge-std/src/safeconsole.sol#L2291-L2328) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2298-L2318)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2320-L2327)

lib/forge-std/src/safeconsole.sol#L2291-L2328


 - [ ] ID-568
[safeconsole.log(address,address,bool,bool)](lib/forge-std/src/safeconsole.sol#L2967-L2994) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2973-L2985)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2987-L2993)

lib/forge-std/src/safeconsole.sol#L2967-L2994


 - [ ] ID-569
[safeconsole.log(uint256,uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L9166-L9193) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9172-L9184)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9186-L9192)

lib/forge-std/src/safeconsole.sol#L9166-L9193


 - [ ] ID-570
[safeconsole.log(bytes32,address,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L10848-L10903) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10860-L10888)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10890-L10902)

lib/forge-std/src/safeconsole.sol#L10848-L10903


 - [ ] ID-571
[safeconsole.log(uint256,uint256,bool,uint256)](lib/forge-std/src/safeconsole.sol#L9036-L9063) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9042-L9054)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9056-L9062)

lib/forge-std/src/safeconsole.sol#L9036-L9063


 - [ ] ID-572
[safeconsole.log(uint256,bool,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L8597-L8624) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8603-L8615)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8617-L8623)

lib/forge-std/src/safeconsole.sol#L8597-L8624


 - [ ] ID-573
[safeconsole.log(bool,bool,uint256)](lib/forge-std/src/safeconsole.sol#L1282-L1305) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1287-L1297)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1299-L1304)

lib/forge-std/src/safeconsole.sol#L1282-L1305


 - [ ] ID-574
[safeconsole.log(uint256,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L1812-L1849) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1819-L1839)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1841-L1848)

lib/forge-std/src/safeconsole.sol#L1812-L1849


 - [ ] ID-575
[safeconsole.log(uint256,bool,uint256,bool)](lib/forge-std/src/safeconsole.sol#L8568-L8595) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8574-L8586)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8588-L8594)

lib/forge-std/src/safeconsole.sol#L8568-L8595


 - [ ] ID-576
[safeconsole.log(uint256,bytes32,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L10054-L10102) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10064-L10089)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10091-L10101)

lib/forge-std/src/safeconsole.sol#L10054-L10102


 - [ ] ID-577
[safeconsole.log(address,bytes32,bytes32,address)](lib/forge-std/src/safeconsole.sol#L5052-L5100) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5062-L5087)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5089-L5099)

lib/forge-std/src/safeconsole.sol#L5052-L5100


 - [ ] ID-578
[safeconsole.log(bytes32,address,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L10798-L10846) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10808-L10833)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10835-L10845)

lib/forge-std/src/safeconsole.sol#L10798-L10846


 - [ ] ID-579
[safeconsole.log(uint256,bool,address,address)](lib/forge-std/src/safeconsole.sol#L8279-L8306) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8285-L8297)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8299-L8305)

lib/forge-std/src/safeconsole.sol#L8279-L8306


 - [ ] ID-580
[safeconsole.log(uint256,address,address,bool)](lib/forge-std/src/safeconsole.sol#L7739-L7766) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7745-L7757)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7759-L7765)

lib/forge-std/src/safeconsole.sol#L7739-L7766


 - [ ] ID-581
[safeconsole.log(address,uint256,address,bool)](lib/forge-std/src/safeconsole.sol#L3975-L4002) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3981-L3993)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3995-L4001)

lib/forge-std/src/safeconsole.sol#L3975-L4002


 - [ ] ID-582
[safeconsole.log(bool,address,address)](lib/forge-std/src/safeconsole.sol#L1118-L1141) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1123-L1133)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1135-L1140)

lib/forge-std/src/safeconsole.sol#L1118-L1141


 - [ ] ID-583
[safeconsole.log(bool,bool,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L6304-L6345) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6312-L6334)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6336-L6344)

lib/forge-std/src/safeconsole.sol#L6304-L6345


 - [ ] ID-584
[safeconsole.log(bytes32,bool,bool,bool)](lib/forge-std/src/safeconsole.sol#L11127-L11168) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11135-L11157)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11159-L11167)

lib/forge-std/src/safeconsole.sol#L11127-L11168


 - [ ] ID-585
[safeconsole.log(uint256,uint256,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L9281-L9322) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9289-L9311)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9313-L9321)

lib/forge-std/src/safeconsole.sol#L9281-L9322


 - [ ] ID-586
[safeconsole.log(bytes32,address,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L10748-L10796) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10758-L10783)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10785-L10795)

lib/forge-std/src/safeconsole.sol#L10748-L10796


 - [ ] ID-587
[safeconsole.log(uint256,bytes32,bytes32,address)](lib/forge-std/src/safeconsole.sol#L9954-L10002) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9964-L9989)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9991-L10001)

lib/forge-std/src/safeconsole.sol#L9954-L10002


 - [ ] ID-588
[safeconsole.log(address,uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L4264-L4291) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4270-L4282)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4284-L4290)

lib/forge-std/src/safeconsole.sol#L4264-L4291


 - [ ] ID-589
[safeconsole.log(bytes32)](lib/forge-std/src/safeconsole.sol#L141-L170) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L146-L162)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L164-L169)

lib/forge-std/src/safeconsole.sol#L141-L170


 - [ ] ID-590
[safeconsole.log(bool,address,bool)](lib/forge-std/src/safeconsole.sol#L1143-L1166) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1148-L1158)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1160-L1165)

lib/forge-std/src/safeconsole.sol#L1143-L1166


 - [ ] ID-591
[safeconsole.log(bool,address,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L5778-L5826) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5788-L5813)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5815-L5825)

lib/forge-std/src/safeconsole.sol#L5778-L5826


 - [ ] ID-592
[safeconsole.log(uint256,bool,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L8755-L8796) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8763-L8785)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8787-L8795)

lib/forge-std/src/safeconsole.sol#L8755-L8796


 - [ ] ID-593
[safeconsole.log(uint256,bool,bool,bool)](lib/forge-std/src/safeconsole.sol#L8438-L8465) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8444-L8456)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8458-L8464)

lib/forge-std/src/safeconsole.sol#L8438-L8465


 - [ ] ID-594
[StdCheatsSafe._pureChainId()](lib/forge-std/src/StdCheats.sol#L624-L631) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L627-L629)

lib/forge-std/src/StdCheats.sol#L624-L631


 - [ ] ID-595
[safeconsole.log(bool,bytes32,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L7453-L7501) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7463-L7488)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7490-L7500)

lib/forge-std/src/safeconsole.sol#L7453-L7501


 - [ ] ID-596
[safeconsole.log(uint256,uint256,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L9324-L9365) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9332-L9354)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9356-L9364)

lib/forge-std/src/safeconsole.sol#L9324-L9365


 - [ ] ID-597
[safeconsole.log(bytes32,uint256,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L12236-L12284) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12246-L12271)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12273-L12283)

lib/forge-std/src/safeconsole.sol#L12236-L12284


 - [ ] ID-598
[safeconsole.log(bytes32,uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L12093-L12134) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12101-L12123)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12125-L12133)

lib/forge-std/src/safeconsole.sol#L12093-L12134


 - [ ] ID-599
[safeconsole.log(bool,address)](lib/forge-std/src/safeconsole.sol#L270-L289) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L274-L282)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L284-L288)

lib/forge-std/src/safeconsole.sol#L270-L289


 - [ ] ID-600
[safeconsole.log(bytes32,bool,uint256,bool)](lib/forge-std/src/safeconsole.sol#L11306-L11347) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11314-L11336)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11338-L11346)

lib/forge-std/src/safeconsole.sol#L11306-L11347


 - [ ] ID-601
[safeconsole.log(bytes32,bytes32,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L13071-L13126) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13083-L13111)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13113-L13125)

lib/forge-std/src/safeconsole.sol#L13071-L13126


 - [ ] ID-602
[EnumerableSet.values(EnumerableSet.Bytes32Set)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L219-L229) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L224-L226)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L219-L229


 - [ ] ID-603
[safeconsole.log(address,uint256)](lib/forge-std/src/safeconsole.sol#L214-L233) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L218-L226)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L228-L232)

lib/forge-std/src/safeconsole.sol#L214-L233


 - [ ] ID-604
[safeconsole.log(address,address,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L3241-L3282) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3249-L3271)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3273-L3281)

lib/forge-std/src/safeconsole.sol#L3241-L3282


 - [ ] ID-605
[safeconsole.log(bool,bool,address,bytes32)](lib/forge-std/src/safeconsole.sol#L5915-L5956) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5923-L5945)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5947-L5955)

lib/forge-std/src/safeconsole.sol#L5915-L5956


 - [ ] ID-606
[safeconsole.log(uint256,bytes32,address,bytes32)](lib/forge-std/src/safeconsole.sol#L9546-L9594) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9556-L9581)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9583-L9593)

lib/forge-std/src/safeconsole.sol#L9546-L9594


 - [ ] ID-607
[safeconsole.log(bytes32,address,uint256,bool)](lib/forge-std/src/safeconsole.sol#L10562-L10603) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10570-L10592)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10594-L10602)

lib/forge-std/src/safeconsole.sol#L10562-L10603


 - [ ] ID-608
[safeconsole.log(uint256,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L1926-L1963) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1933-L1953)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1955-L1962)

lib/forge-std/src/safeconsole.sol#L1926-L1963


 - [ ] ID-609
[StdCheatsSafe.deployCode(string,uint256)](lib/forge-std/src/StdCheats.sol#L517-L525) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L520-L522)

lib/forge-std/src/StdCheats.sol#L517-L525


 - [ ] ID-610
[safeconsole.log(bool,uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L6715-L6742) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6721-L6733)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6735-L6741)

lib/forge-std/src/safeconsole.sol#L6715-L6742


 - [ ] ID-611
[safeconsole.log(bytes32,bytes32,bool,uint256)](lib/forge-std/src/safeconsole.sol#L12700-L12748) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12710-L12735)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12737-L12747)

lib/forge-std/src/safeconsole.sol#L12700-L12748


 - [ ] ID-612
[StdCheatsSafe._viewChainId()](lib/forge-std/src/StdCheats.sol#L615-L622) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L617-L619)

lib/forge-std/src/StdCheats.sol#L615-L622


 - [ ] ID-613
[stdStorage.flatten(bytes32[])](lib/forge-std/src/StdStorage.sol#L319-L330) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdStorage.sol#L324-L326)

lib/forge-std/src/StdStorage.sol#L319-L330


 - [ ] ID-614
[safeconsole.log(bytes32,uint256,address)](lib/forge-std/src/safeconsole.sol#L2454-L2491) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2461-L2481)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2483-L2490)

lib/forge-std/src/safeconsole.sol#L2454-L2491


 - [ ] ID-615
[safeconsole.log(uint256,address,bool,bool)](lib/forge-std/src/safeconsole.sol#L7869-L7896) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7875-L7887)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7889-L7895)

lib/forge-std/src/safeconsole.sol#L7869-L7896


 - [ ] ID-616
[safeconsole.log(bool,uint256,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L6873-L6914) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6881-L6903)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6905-L6913)

lib/forge-std/src/safeconsole.sol#L6873-L6914


 - [ ] ID-617
[safeconsole.log(bool,bool,address,uint256)](lib/forge-std/src/safeconsole.sol#L5886-L5913) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5892-L5904)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5906-L5912)

lib/forge-std/src/safeconsole.sol#L5886-L5913


 - [ ] ID-618
[safeconsole.log(address,bytes32,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L5102-L5150) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5112-L5137)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5139-L5149)

lib/forge-std/src/safeconsole.sol#L5102-L5150


 - [ ] ID-619
[safeconsole.log(address,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L994-L1031) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1001-L1021)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1023-L1030)

lib/forge-std/src/safeconsole.sol#L994-L1031


 - [ ] ID-620
[DestinationLayerCake.run()](script/src/DestinationLayerCake.s.sol#L17-L71) uses assembly
	- [INLINE ASM](script/src/DestinationLayerCake.s.sol#L28-L30)

script/src/DestinationLayerCake.s.sol#L17-L71


 - [ ] ID-621
[safeconsole.log(bool,uint256,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L6744-L6785) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6752-L6774)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6776-L6784)

lib/forge-std/src/safeconsole.sol#L6744-L6785


 - [ ] ID-622
[safeconsole.log(bytes32,bool,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L11349-L11390) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11357-L11379)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11381-L11389)

lib/forge-std/src/safeconsole.sol#L11349-L11390


 - [ ] ID-623
[safeconsole.log(bool,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L1538-L1575) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1545-L1565)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1567-L1574)

lib/forge-std/src/safeconsole.sol#L1538-L1575


 - [ ] ID-624
[safeconsole.log(bytes32,bool,uint256)](lib/forge-std/src/safeconsole.sol#L2369-L2406) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2376-L2396)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2398-L2405)

lib/forge-std/src/safeconsole.sol#L2369-L2406


 - [ ] ID-625
[safeconsole.log(bytes32,uint256,address,address)](lib/forge-std/src/safeconsole.sol#L11649-L11690) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11657-L11679)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11681-L11689)

lib/forge-std/src/safeconsole.sol#L11649-L11690


 - [ ] ID-626
[safeconsole.log(uint256,address,uint256,address)](lib/forge-std/src/safeconsole.sol#L7970-L7997) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7976-L7988)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7990-L7996)

lib/forge-std/src/safeconsole.sol#L7970-L7997


 - [ ] ID-627
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/LayerCakeCalldataInterface.sol#L10-L19) uses assembly
	- [INLINE ASM](src/core/LayerCakeCalldataInterface.sol#L14-L16)

src/core/LayerCakeCalldataInterface.sol#L10-L19


 - [ ] ID-628
[safeconsole.log(address,address,uint256,bool)](lib/forge-std/src/safeconsole.sol#L3097-L3124) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3103-L3115)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3117-L3123)

lib/forge-std/src/safeconsole.sol#L3097-L3124


 - [ ] ID-629
[safeconsole.log(address,bytes32,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L4959-L5000) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4967-L4989)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4991-L4999)

lib/forge-std/src/safeconsole.sol#L4959-L5000


 - [ ] ID-630
[safeconsole.log(bytes32,bytes32,address,uint256)](lib/forge-std/src/safeconsole.sol#L12493-L12541) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12503-L12528)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12530-L12540)

lib/forge-std/src/safeconsole.sol#L12493-L12541


 - [ ] ID-631
[safeconsole.log(bool,bytes32,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L7653-L7708) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7665-L7693)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7695-L7707)

lib/forge-std/src/safeconsole.sol#L7653-L7708


 - [ ] ID-632
[safeconsole.log(bool,address,bytes32)](lib/forge-std/src/safeconsole.sol#L1193-L1230) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1200-L1220)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1222-L1229)

lib/forge-std/src/safeconsole.sol#L1193-L1230


 - [ ] ID-633
[safeconsole.log(uint256,bool,uint256)](lib/forge-std/src/safeconsole.sol#L1787-L1810) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1792-L1802)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1804-L1809)

lib/forge-std/src/safeconsole.sol#L1787-L1810


 - [ ] ID-634
[safeconsole.log(bool,bool)](lib/forge-std/src/safeconsole.sol#L291-L310) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L295-L303)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L305-L309)

lib/forge-std/src/safeconsole.sol#L291-L310


 - [ ] ID-635
[safeconsole.log(uint256,bytes32,address,address)](lib/forge-std/src/safeconsole.sol#L9417-L9458) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9425-L9447)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9449-L9457)

lib/forge-std/src/safeconsole.sol#L9417-L9458


 - [ ] ID-636
[safeconsole.log(uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L431-L464) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L437-L455)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L457-L463)

lib/forge-std/src/safeconsole.sol#L431-L464


 - [ ] ID-637
[safeconsole.log(address,bool,uint256)](lib/forge-std/src/safeconsole.sol#L777-L800) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L782-L792)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L794-L799)

lib/forge-std/src/safeconsole.sol#L777-L800


 - [ ] ID-638
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L338-L348) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L343-L345)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L338-L348


 - [ ] ID-639
[safeconsole.log(bool,bool,address)](lib/forge-std/src/safeconsole.sol#L1232-L1255) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1237-L1247)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1249-L1254)

lib/forge-std/src/safeconsole.sol#L1232-L1255


 - [ ] ID-640
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L244-L254) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L249-L251)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L244-L254


 - [ ] ID-641
[safeconsole.log(bytes32,address,address,uint256)](lib/forge-std/src/safeconsole.sol#L10247-L10288) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10255-L10277)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10279-L10287)

lib/forge-std/src/safeconsole.sol#L10247-L10288


 - [ ] ID-642
[safeconsole.log(bytes32,address,bytes32,address)](lib/forge-std/src/safeconsole.sol#L10698-L10746) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10708-L10733)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10735-L10745)

lib/forge-std/src/safeconsole.sol#L10698-L10746


 - [ ] ID-643
[safeconsole.log(bool,address,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L5692-L5733) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5700-L5722)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5724-L5732)

lib/forge-std/src/safeconsole.sol#L5692-L5733


 - [ ] ID-644
[safeconsole.log(bool,address,bool,address)](lib/forge-std/src/safeconsole.sol#L5389-L5416) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5395-L5407)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5409-L5415)

lib/forge-std/src/safeconsole.sol#L5389-L5416


 - [ ] ID-645
[safeconsole.log(bytes32,bytes32,address,bool)](lib/forge-std/src/safeconsole.sol#L12443-L12491) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12453-L12478)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12480-L12490)

lib/forge-std/src/safeconsole.sol#L12443-L12491


 - [ ] ID-646
[safeconsole.log(bool,address,uint256)](lib/forge-std/src/safeconsole.sol#L1168-L1191) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1173-L1183)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1185-L1190)

lib/forge-std/src/safeconsole.sol#L1168-L1191


 - [ ] ID-647
[safeconsole.log(bool,uint256,address,uint256)](lib/forge-std/src/safeconsole.sol#L6455-L6482) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6461-L6473)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6475-L6481)

lib/forge-std/src/safeconsole.sol#L6455-L6482


 - [ ] ID-648
[safeconsole.log(address,address,uint256)](lib/forge-std/src/safeconsole.sol#L663-L686) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L668-L678)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L680-L685)

lib/forge-std/src/safeconsole.sol#L663-L686


 - [ ] ID-649
[safeconsole.log(uint256,uint256,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L9367-L9415) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9377-L9402)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9404-L9414)

lib/forge-std/src/safeconsole.sol#L9367-L9415


 - [ ] ID-650
[safeconsole.log(address,bytes32,address,address)](lib/forge-std/src/safeconsole.sol#L4515-L4556) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4523-L4545)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4547-L4555)

lib/forge-std/src/safeconsole.sol#L4515-L4556


 - [ ] ID-651
[safeconsole.log(uint256,uint256,uint256,address)](lib/forge-std/src/safeconsole.sol#L9108-L9135) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9114-L9126)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9128-L9134)

lib/forge-std/src/safeconsole.sol#L9108-L9135


 - [ ] ID-652
[safeconsole.log(address,address,address,bytes32)](lib/forge-std/src/safeconsole.sol#L2895-L2936) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2903-L2925)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2927-L2935)

lib/forge-std/src/safeconsole.sol#L2895-L2936


 - [ ] ID-653
[safeconsole.log(bytes32,address,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L10605-L10646) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10613-L10635)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10637-L10645)

lib/forge-std/src/safeconsole.sol#L10605-L10646


 - [ ] ID-654
[safeconsole.log(bool,bool,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L6175-L6216) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6183-L6205)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6207-L6215)

lib/forge-std/src/safeconsole.sol#L6175-L6216


 - [ ] ID-655
[safeconsole.log(uint256,bool,address,bytes32)](lib/forge-std/src/safeconsole.sol#L8366-L8407) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8374-L8396)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8398-L8406)

lib/forge-std/src/safeconsole.sol#L8366-L8407


 - [ ] ID-656
[safeconsole.log(uint256,bytes32,bool,uint256)](lib/forge-std/src/safeconsole.sol#L9682-L9723) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9690-L9712)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9714-L9722)

lib/forge-std/src/safeconsole.sol#L9682-L9723


 - [ ] ID-657
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L899-L909) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L904-L906)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L899-L909


 - [ ] ID-658
[safeconsole.log(bool,bool,address,bool)](lib/forge-std/src/safeconsole.sol#L5857-L5884) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5863-L5875)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5877-L5883)

lib/forge-std/src/safeconsole.sol#L5857-L5884


 - [ ] ID-659
[safeconsole.log(address,uint256,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L4422-L4463) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4430-L4452)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4454-L4462)

lib/forge-std/src/safeconsole.sol#L4422-L4463


 - [ ] ID-660
[safeconsole.log(address,address,uint256,address)](lib/forge-std/src/safeconsole.sol#L3068-L3095) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3074-L3086)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3088-L3094)

lib/forge-std/src/safeconsole.sol#L3068-L3095


 - [ ] ID-661
[safeconsole.log(uint256,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L2043-L2080) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2050-L2070)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2072-L2079)

lib/forge-std/src/safeconsole.sol#L2043-L2080


 - [ ] ID-662
[safeconsole.log(uint256,address,address,uint256)](lib/forge-std/src/safeconsole.sol#L7768-L7795) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7774-L7786)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7788-L7794)

lib/forge-std/src/safeconsole.sol#L7768-L7795


 - [ ] ID-663
[safeconsole.log(uint256,address,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L7927-L7968) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7935-L7957)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7959-L7967)

lib/forge-std/src/safeconsole.sol#L7927-L7968


 - [ ] ID-664
[safeconsole.log(bool,uint256,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L6830-L6871) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6838-L6860)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6862-L6870)

lib/forge-std/src/safeconsole.sol#L6830-L6871


 - [ ] ID-665
[safeconsole.log(bytes32,bool,bytes32,address)](lib/forge-std/src/safeconsole.sol#L11442-L11490) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11452-L11477)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11479-L11489)

lib/forge-std/src/safeconsole.sol#L11442-L11490


 - [ ] ID-666
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L715-L725) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L720-L722)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L715-L725


 - [ ] ID-667
[safeconsole.log(uint256,bool,address)](lib/forge-std/src/safeconsole.sol#L1737-L1760) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1742-L1752)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1754-L1759)

lib/forge-std/src/safeconsole.sol#L1737-L1760


 - [ ] ID-668
[safeconsole.log(bytes32,bool,address,address)](lib/forge-std/src/safeconsole.sol#L10905-L10946) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10913-L10935)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10937-L10945)

lib/forge-std/src/safeconsole.sol#L10905-L10946


 - [ ] ID-669
[safeconsole.log(bytes32,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L2408-L2452) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2417-L2440)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2442-L2451)

lib/forge-std/src/safeconsole.sol#L2408-L2452


 - [ ] ID-670
[safeconsole.log(uint256,address,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L8057-L8098) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8065-L8087)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8089-L8097)

lib/forge-std/src/safeconsole.sol#L8057-L8098


 - [ ] ID-671
[safeconsole.log(uint256,address,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L8229-L8277) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8239-L8264)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8266-L8276)

lib/forge-std/src/safeconsole.sol#L8229-L8277


 - [ ] ID-672
[safeconsole.log(bool,uint256,bool,address)](lib/forge-std/src/safeconsole.sol#L6527-L6554) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6533-L6545)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6547-L6553)

lib/forge-std/src/safeconsole.sol#L6527-L6554


 - [ ] ID-673
[safeconsole.log(bytes32,address,bool,bool)](lib/forge-std/src/safeconsole.sol#L10383-L10424) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10391-L10413)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10415-L10423)

lib/forge-std/src/safeconsole.sol#L10383-L10424


 - [ ] ID-674
[safeconsole.log(bytes32,bytes32,address,bytes32)](lib/forge-std/src/safeconsole.sol#L12543-L12598) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12555-L12583)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12585-L12597)

lib/forge-std/src/safeconsole.sol#L12543-L12598


 - [ ] ID-675
[safeconsole.log(address,address,bytes32,address)](lib/forge-std/src/safeconsole.sol#L3198-L3239) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3206-L3228)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3230-L3238)

lib/forge-std/src/safeconsole.sol#L3198-L3239


 - [ ] ID-676
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1039-L1049) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1044-L1046)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1039-L1049


 - [ ] ID-677
[safeconsole.log(address,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L891-L914) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L896-L906)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L908-L913)

lib/forge-std/src/safeconsole.sol#L891-L914


 - [ ] ID-678
[safeconsole.log(bool,bytes32,uint256,address)](lib/forge-std/src/safeconsole.sol#L7324-L7365) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7332-L7354)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7356-L7364)

lib/forge-std/src/safeconsole.sol#L7324-L7365


 - [ ] ID-679
[safeconsole.log(bool,bool,bool,address)](lib/forge-std/src/safeconsole.sol#L5958-L5985) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5964-L5976)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5978-L5984)

lib/forge-std/src/safeconsole.sol#L5958-L5985


 - [ ] ID-680
[safeconsole.log(bytes32,uint256,address,bool)](lib/forge-std/src/safeconsole.sol#L11692-L11733) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11700-L11722)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11724-L11732)

lib/forge-std/src/safeconsole.sol#L11692-L11733


 - [ ] ID-681
[safeconsole.log(bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L536-L569) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L542-L560)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L562-L568)

lib/forge-std/src/safeconsole.sol#L536-L569


 - [ ] ID-682
[safeconsole.log(bool,address,address,bool)](lib/forge-std/src/safeconsole.sol#L5288-L5315) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5294-L5306)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5308-L5314)

lib/forge-std/src/safeconsole.sol#L5288-L5315


 - [ ] ID-683
[safeconsole._memcopyView(uint256,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L35-L39) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L36-L38)

lib/forge-std/src/safeconsole.sol#L35-L39


 - [ ] ID-684
[safeconsole.log(address,uint256,bool,address)](lib/forge-std/src/safeconsole.sol#L4076-L4103) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4082-L4094)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4096-L4102)

lib/forge-std/src/safeconsole.sol#L4076-L4103


 - [ ] ID-685
[safeconsole.log(uint256,bool,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L8712-L8753) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8720-L8742)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8744-L8752)

lib/forge-std/src/safeconsole.sol#L8712-L8753


 - [ ] ID-686
[safeconsole.log(uint256,address,address,address)](lib/forge-std/src/safeconsole.sol#L7710-L7737) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7716-L7728)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7730-L7736)

lib/forge-std/src/safeconsole.sol#L7710-L7737


 - [ ] ID-687
[safeconsole.log(uint256,uint256,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L9065-L9106) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9073-L9095)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9097-L9105)

lib/forge-std/src/safeconsole.sol#L9065-L9106


 - [ ] ID-688
[safeconsole.log(address,bool,uint256,address)](lib/forge-std/src/safeconsole.sol#L3637-L3664) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3643-L3655)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3657-L3663)

lib/forge-std/src/safeconsole.sol#L3637-L3664


 - [ ] ID-689
[safeconsole.log(bytes32,bool,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L11592-L11647) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11604-L11632)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11634-L11646)

lib/forge-std/src/safeconsole.sol#L11592-L11647


 - [ ] ID-690
[safeconsole.log(bool,address,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L5735-L5776) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5743-L5765)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5767-L5775)

lib/forge-std/src/safeconsole.sol#L5735-L5776


 - [ ] ID-691
[safeconsole.log(bytes32,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L2532-L2569) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2539-L2559)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2561-L2568)

lib/forge-std/src/safeconsole.sol#L2532-L2569


 - [ ] ID-692
[safeconsole.log(bytes32,address,address,address)](lib/forge-std/src/safeconsole.sol#L10161-L10202) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10169-L10191)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10193-L10201)

lib/forge-std/src/safeconsole.sol#L10161-L10202


 - [ ] ID-693
[safeconsole.log(bytes32,bytes32,address,address)](lib/forge-std/src/safeconsole.sol#L12393-L12441) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12403-L12428)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12430-L12440)

lib/forge-std/src/safeconsole.sol#L12393-L12441


 - [ ] ID-694
[safeconsole.log(address,bool,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L3896-L3944) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3906-L3931)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3933-L3943)

lib/forge-std/src/safeconsole.sol#L3896-L3944


 - [ ] ID-695
[safeconsole.log(bytes32,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L2709-L2753) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2718-L2741)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2743-L2752)

lib/forge-std/src/safeconsole.sol#L2709-L2753


 - [ ] ID-696
[EnumerableSet.values(EnumerableSet.AddressSet)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L293-L303) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L298-L300)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L293-L303


 - [ ] ID-697
[safeconsole.log(bool,bool,address,address)](lib/forge-std/src/safeconsole.sol#L5828-L5855) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5834-L5846)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5848-L5854)

lib/forge-std/src/safeconsole.sol#L5828-L5855


 - [ ] ID-698
[safeconsole.log(uint256,bool,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L8496-L8537) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8504-L8526)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8528-L8536)

lib/forge-std/src/safeconsole.sol#L8496-L8537


 - [ ] ID-699
[safeconsole.log(bool,uint256,address,address)](lib/forge-std/src/safeconsole.sol#L6397-L6424) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6403-L6415)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6417-L6423)

lib/forge-std/src/safeconsole.sol#L6397-L6424


 - [ ] ID-700
[safeconsole.log(address,bool,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L3594-L3635) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3602-L3624)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3626-L3634)

lib/forge-std/src/safeconsole.sol#L3594-L3635


 - [ ] ID-701
[safeconsole.log(uint256,uint256,address,bool)](lib/forge-std/src/safeconsole.sol#L8877-L8904) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8883-L8895)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8897-L8903)

lib/forge-std/src/safeconsole.sol#L8877-L8904


 - [ ] ID-702
[safeconsole.log(bytes32,uint256,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L11957-L12005) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11967-L11992)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11994-L12004)

lib/forge-std/src/safeconsole.sol#L11957-L12005


 - [ ] ID-703
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L300-L310) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L305-L307)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L300-L310


 - [ ] ID-704
[safeconsole.log(uint256,bytes32,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L9725-L9773) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9735-L9760)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9762-L9772)

lib/forge-std/src/safeconsole.sol#L9725-L9773


 - [ ] ID-705
[safeconsole.log(bool,bytes32,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L7274-L7322) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7284-L7309)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7311-L7321)

lib/forge-std/src/safeconsole.sol#L7274-L7322


 - [ ] ID-706
[safeconsole.log(uint256,uint256,bool,bool)](lib/forge-std/src/safeconsole.sol#L9007-L9034) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9013-L9025)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9027-L9033)

lib/forge-std/src/safeconsole.sol#L9007-L9034


 - [ ] ID-707
[safeconsole.log(bool,uint256,bool,bool)](lib/forge-std/src/safeconsole.sol#L6556-L6583) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6562-L6574)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6576-L6582)

lib/forge-std/src/safeconsole.sol#L6556-L6583


 - [ ] ID-708
[safeconsole.log(bytes32,uint256,bool,bool)](lib/forge-std/src/safeconsole.sol#L11871-L11912) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11879-L11901)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11903-L11911)

lib/forge-std/src/safeconsole.sol#L11871-L11912


 - [ ] ID-709
[safeconsole.log(bytes32,bool)](lib/forge-std/src/safeconsole.sol#L501-L534) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L507-L525)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L527-L533)

lib/forge-std/src/safeconsole.sol#L501-L534


 - [ ] ID-710
[safeconsole.log(uint256,address,bytes32,address)](lib/forge-std/src/safeconsole.sol#L8100-L8141) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8108-L8130)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8132-L8140)

lib/forge-std/src/safeconsole.sol#L8100-L8141


 - [ ] ID-711
[StdChains.getChainWithUpdatedRpcUrl(string,StdChains.Chain)](lib/forge-std/src/StdChains.sol#L151-L174) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdChains.sol#L167-L169)

lib/forge-std/src/StdChains.sol#L151-L174


 - [ ] ID-712
[safeconsole.log(uint256,bytes32,bool,address)](lib/forge-std/src/safeconsole.sol#L9596-L9637) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9604-L9626)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9628-L9636)

lib/forge-std/src/safeconsole.sol#L9596-L9637


 - [ ] ID-713
[safeconsole.log(bool,bool,uint256,address)](lib/forge-std/src/safeconsole.sol#L6088-L6115) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6094-L6106)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6108-L6114)

lib/forge-std/src/safeconsole.sol#L6088-L6115


 - [ ] ID-714
[safeconsole.log(bool,bytes32,bool,address)](lib/forge-std/src/safeconsole.sol#L7145-L7186) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7153-L7175)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7177-L7185)

lib/forge-std/src/safeconsole.sol#L7145-L7186


 - [ ] ID-715
[safeconsole.log(address,uint256,address,bytes32)](lib/forge-std/src/safeconsole.sol#L4033-L4074) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4041-L4063)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4065-L4073)

lib/forge-std/src/safeconsole.sol#L4033-L4074


 - [ ] ID-716
[safeconsole.log(address,bytes32,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L5152-L5200) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5162-L5187)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5189-L5199)

lib/forge-std/src/safeconsole.sol#L5152-L5200


 - [ ] ID-717
[safeconsole.log(address,bytes32,bool,address)](lib/forge-std/src/safeconsole.sol#L4694-L4735) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4702-L4724)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4726-L4734)

lib/forge-std/src/safeconsole.sol#L4694-L4735


 - [ ] ID-718
[safeconsole.log(bytes32,bytes32,bytes32,address)](lib/forge-std/src/safeconsole.sol#L13014-L13069) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13026-L13054)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L13056-L13068)

lib/forge-std/src/safeconsole.sol#L13014-L13069


 - [ ] ID-719
[safeconsole.log(address,bytes32,bool,bool)](lib/forge-std/src/safeconsole.sol#L4737-L4778) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4745-L4767)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4769-L4777)

lib/forge-std/src/safeconsole.sol#L4737-L4778


 - [ ] ID-720
[safeconsole.log(bool,bool,bytes32,address)](lib/forge-std/src/safeconsole.sol#L6218-L6259) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6226-L6248)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6250-L6258)

lib/forge-std/src/safeconsole.sol#L6218-L6259


 - [ ] ID-721
[safeconsole.log(uint256,bool,uint256,address)](lib/forge-std/src/safeconsole.sol#L8539-L8566) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8545-L8557)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8559-L8565)

lib/forge-std/src/safeconsole.sol#L8539-L8566


 - [ ] ID-722
[safeconsole.log(bytes32,uint256,bool)](lib/forge-std/src/safeconsole.sol#L2493-L2530) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2500-L2520)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2522-L2529)

lib/forge-std/src/safeconsole.sol#L2493-L2530


 - [ ] ID-723
[safeconsole.log(bool,uint256,address,bool)](lib/forge-std/src/safeconsole.sol#L6426-L6453) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6432-L6444)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6446-L6452)

lib/forge-std/src/safeconsole.sol#L6426-L6453


 - [ ] ID-724
[safeconsole.log(address,uint256,uint256,address)](lib/forge-std/src/safeconsole.sol#L4206-L4233) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4212-L4224)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4226-L4232)

lib/forge-std/src/safeconsole.sol#L4206-L4233


 - [ ] ID-725
[safeconsole.log(bool,uint256,uint256,address)](lib/forge-std/src/safeconsole.sol#L6657-L6684) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6663-L6675)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6677-L6683)

lib/forge-std/src/safeconsole.sol#L6657-L6684


 - [ ] ID-726
[safeconsole.log(address,uint256,bool,uint256)](lib/forge-std/src/safeconsole.sol#L4134-L4161) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4140-L4152)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4154-L4160)

lib/forge-std/src/safeconsole.sol#L4134-L4161


 - [ ] ID-727
[safeconsole.log(bytes32,uint256,bool,address)](lib/forge-std/src/safeconsole.sol#L11828-L11869) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11836-L11858)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11860-L11868)

lib/forge-std/src/safeconsole.sol#L11828-L11869


 - [ ] ID-728
[safeconsole.log(bytes32,bool,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L11492-L11540) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11502-L11527)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11529-L11539)

lib/forge-std/src/safeconsole.sol#L11492-L11540


 - [ ] ID-729
[safeconsole.log(bytes32,address)](lib/forge-std/src/safeconsole.sol#L466-L499) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L472-L490)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L492-L498)

lib/forge-std/src/safeconsole.sol#L466-L499


 - [ ] ID-730
[safeconsole.log(bool,bool,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L6045-L6086) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6053-L6075)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6077-L6085)

lib/forge-std/src/safeconsole.sol#L6045-L6086


 - [ ] ID-731
[safeconsole.logMemory(uint256,uint256)](lib/forge-std/src/safeconsole.sol#L41-L88) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L47-L55)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L57-L61)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L68-L72)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L74-L79)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L82-L86)

lib/forge-std/src/safeconsole.sol#L41-L88


 - [ ] ID-732
[safeconsole.log(address,bool,uint256,bool)](lib/forge-std/src/safeconsole.sol#L3666-L3693) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3672-L3684)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3686-L3692)

lib/forge-std/src/safeconsole.sol#L3666-L3693


 - [ ] ID-733
[safeconsole.log(uint256,address,bool)](lib/forge-std/src/safeconsole.sol#L1648-L1671) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1653-L1663)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1665-L1670)

lib/forge-std/src/safeconsole.sol#L1648-L1671


 - [ ] ID-734
[safeconsole.log(address,bytes32,address,uint256)](lib/forge-std/src/safeconsole.sol#L4601-L4642) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4609-L4631)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4633-L4641)

lib/forge-std/src/safeconsole.sol#L4601-L4642


 - [ ] ID-735
[safeconsole.log(bool,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L1396-L1419) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1401-L1411)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1413-L1418)

lib/forge-std/src/safeconsole.sol#L1396-L1419


 - [ ] ID-736
[safeconsole.log(uint256,address,uint256)](lib/forge-std/src/safeconsole.sol#L1673-L1696) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1678-L1688)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1690-L1695)

lib/forge-std/src/safeconsole.sol#L1673-L1696


 - [ ] ID-737
[safeconsole.log(address,uint256,bool,bool)](lib/forge-std/src/safeconsole.sol#L4105-L4132) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4111-L4123)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4125-L4131)

lib/forge-std/src/safeconsole.sol#L4105-L4132


 - [ ] ID-738
[safeconsole.log(address,bool,address,bytes32)](lib/forge-std/src/safeconsole.sol#L3464-L3505) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3472-L3494)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3496-L3504)

lib/forge-std/src/safeconsole.sol#L3464-L3505


 - [ ] ID-739
[safeconsole.log(bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L571-L611) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L579-L600)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L602-L610)

lib/forge-std/src/safeconsole.sol#L571-L611


 - [ ] ID-740
[safeconsole.log(address,address,bytes32)](lib/forge-std/src/safeconsole.sol#L688-L725) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L695-L715)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L717-L724)

lib/forge-std/src/safeconsole.sol#L688-L725


 - [ ] ID-741
[safeconsole.log(bytes32,bool,uint256,address)](lib/forge-std/src/safeconsole.sol#L11263-L11304) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11271-L11293)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11295-L11303)

lib/forge-std/src/safeconsole.sol#L11263-L11304


 - [ ] ID-742
[safeconsole.log(address,bool,address,bool)](lib/forge-std/src/safeconsole.sol#L3406-L3433) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3412-L3424)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3426-L3432)

lib/forge-std/src/safeconsole.sol#L3406-L3433


 - [ ] ID-743
[safeconsole.log(bytes32,bool,address,uint256)](lib/forge-std/src/safeconsole.sol#L10991-L11032) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10999-L11021)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11023-L11031)

lib/forge-std/src/safeconsole.sol#L10991-L11032


 - [ ] ID-744
[EnumerableSet.values(EnumerableSet.UintSet)](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L367-L377) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L372-L374)

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L367-L377


 - [ ] ID-745
[safeconsole.log(address,address)](lib/forge-std/src/safeconsole.sol#L172-L191) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L176-L184)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L186-L190)

lib/forge-std/src/safeconsole.sol#L172-L191


 - [ ] ID-746
[safeconsole.log(uint256,bool,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L8626-L8667) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8634-L8656)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8658-L8666)

lib/forge-std/src/safeconsole.sol#L8626-L8667


 - [ ] ID-747
[StdCheatsSafe.assumeNotBlacklisted(address,address)](lib/forge-std/src/StdCheats.sol#L208-L226) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdCheats.sol#L211-L213)

lib/forge-std/src/StdCheats.sol#L208-L226


 - [ ] ID-748
[safeconsole.log(bool,bytes32,address,bool)](lib/forge-std/src/safeconsole.sol#L7009-L7050) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7017-L7039)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7041-L7049)

lib/forge-std/src/safeconsole.sol#L7009-L7050


 - [ ] ID-749
[safeconsole.log(uint256,uint256,address,uint256)](lib/forge-std/src/safeconsole.sol#L8906-L8933) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8912-L8924)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8926-L8932)

lib/forge-std/src/safeconsole.sol#L8906-L8933


 - [ ] ID-750
[safeconsole.log(bytes32,bool,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L11213-L11261) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11223-L11248)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11250-L11260)

lib/forge-std/src/safeconsole.sol#L11213-L11261


 - [ ] ID-751
[safeconsole.log(uint256,address,bool,uint256)](lib/forge-std/src/safeconsole.sol#L7898-L7925) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7904-L7916)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7918-L7924)

lib/forge-std/src/safeconsole.sol#L7898-L7925


 - [ ] ID-752
[safeconsole.log(uint256,address,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L8143-L8184) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8151-L8173)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8175-L8183)

lib/forge-std/src/safeconsole.sol#L8143-L8184


 - [ ] ID-753
[safeconsole.log(uint256,uint256)](lib/forge-std/src/safeconsole.sol#L410-L429) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L414-L422)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L424-L428)

lib/forge-std/src/safeconsole.sol#L410-L429


 - [ ] ID-754
[safeconsole.log(bool,bytes32,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L7410-L7451) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7418-L7440)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7442-L7450)

lib/forge-std/src/safeconsole.sol#L7410-L7451


 - [ ] ID-755
[safeconsole.log(bytes32,bool,bool,uint256)](lib/forge-std/src/safeconsole.sol#L11170-L11211) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11178-L11200)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11202-L11210)

lib/forge-std/src/safeconsole.sol#L11170-L11211


 - [ ] ID-756
[safeconsole.log(address,uint256,uint256,bool)](lib/forge-std/src/safeconsole.sol#L4235-L4262) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4241-L4253)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4255-L4261)

lib/forge-std/src/safeconsole.sol#L4235-L4262


 - [ ] ID-757
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1007-L1017) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1012-L1014)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1007-L1017


 - [ ] ID-758
[safeconsole.log(uint256,bool,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L8798-L8846) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8808-L8833)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8835-L8845)

lib/forge-std/src/safeconsole.sol#L8798-L8846


 - [ ] ID-759
[safeconsole.log(uint256,uint256,address,address)](lib/forge-std/src/safeconsole.sol#L8848-L8875) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8854-L8866)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L8868-L8874)

lib/forge-std/src/safeconsole.sol#L8848-L8875


 - [ ] ID-760
[safeconsole.log(bool,uint256,address)](lib/forge-std/src/safeconsole.sol#L1346-L1369) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1351-L1361)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1363-L1368)

lib/forge-std/src/safeconsole.sol#L1346-L1369


 - [ ] ID-761
[safeconsole.log(bool,uint256)](lib/forge-std/src/safeconsole.sol#L312-L331) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L316-L324)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L326-L330)

lib/forge-std/src/safeconsole.sol#L312-L331


 - [ ] ID-762
[safeconsole.log(uint256,uint256,address)](lib/forge-std/src/safeconsole.sol#L1851-L1874) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1856-L1866)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1868-L1873)

lib/forge-std/src/safeconsole.sol#L1851-L1874


 - [ ] ID-763
[safeconsole.log(address,uint256,bytes32,bool)](lib/forge-std/src/safeconsole.sol#L4379-L4420) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4387-L4409)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4411-L4419)

lib/forge-std/src/safeconsole.sol#L4379-L4420


 - [ ] ID-764
[safeconsole.log(address,bytes32,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L5002-L5050) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5012-L5037)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5039-L5049)

lib/forge-std/src/safeconsole.sol#L5002-L5050


 - [ ] ID-765
[safeconsole.log(bool,bytes32,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L7603-L7651) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7613-L7638)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7640-L7650)

lib/forge-std/src/safeconsole.sol#L7603-L7651


 - [ ] ID-766
[safeconsole.log(address,address,uint256,uint256)](lib/forge-std/src/safeconsole.sol#L3126-L3153) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3132-L3144)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3146-L3152)

lib/forge-std/src/safeconsole.sol#L3126-L3153


 - [ ] ID-767
[safeconsole.log(bool,address,bytes32,address)](lib/forge-std/src/safeconsole.sol#L5649-L5690) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5657-L5679)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5681-L5689)

lib/forge-std/src/safeconsole.sol#L5649-L5690


 - [ ] ID-768
[safeconsole.log(bool,address,uint256,address)](lib/forge-std/src/safeconsole.sol#L5519-L5546) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5525-L5537)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5539-L5545)

lib/forge-std/src/safeconsole.sol#L5519-L5546


 - [ ] ID-769
[safeconsole.log(bytes32,uint256,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L12336-L12391) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12348-L12376)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12378-L12390)

lib/forge-std/src/safeconsole.sol#L12336-L12391


 - [ ] ID-770
[safeconsole.log(address,uint256,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L4163-L4204) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4171-L4193)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4195-L4203)

lib/forge-std/src/safeconsole.sol#L4163-L4204


 - [ ] ID-771
[safeconsole.log(bytes32,bool,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L11542-L11590) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11552-L11577)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11579-L11589)

lib/forge-std/src/safeconsole.sol#L11542-L11590


 - [ ] ID-772
[safeconsole.log(address,bytes32,address,bytes32)](lib/forge-std/src/safeconsole.sol#L4644-L4692) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4654-L4679)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4681-L4691)

lib/forge-std/src/safeconsole.sol#L4644-L4692


 - [ ] ID-773
[safeconsole.log(bytes32,address,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L10469-L10517) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10479-L10504)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10506-L10516)

lib/forge-std/src/safeconsole.sol#L10469-L10517


 - [ ] ID-774
[safeconsole.log(address,bool,address,address)](lib/forge-std/src/safeconsole.sol#L3377-L3404) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3383-L3395)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3397-L3403)

lib/forge-std/src/safeconsole.sol#L3377-L3404


 - [ ] ID-775
[safeconsole.log(bool,address,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L5606-L5647) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5614-L5636)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5638-L5646)

lib/forge-std/src/safeconsole.sol#L5606-L5647


 - [ ] ID-776
[safeconsole.log(address,address,bytes32,uint256)](lib/forge-std/src/safeconsole.sol#L3284-L3325) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3292-L3314)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3316-L3324)

lib/forge-std/src/safeconsole.sol#L3284-L3325


 - [ ] ID-777
[safeconsole.log(uint256)](lib/forge-std/src/safeconsole.sol#L124-L139) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L127-L133)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L135-L138)

lib/forge-std/src/safeconsole.sol#L124-L139


 - [ ] ID-778
[Math.mulDiv(uint256,uint256,uint256)](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202) uses assembly
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L128-L132)
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L153-L160)
	- [INLINE ASM](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L167-L176)

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L121-L202


 - [ ] ID-779
[safeconsole.log(address,uint256,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L4465-L4513) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4475-L4500)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4502-L4512)

lib/forge-std/src/safeconsole.sol#L4465-L4513


 - [ ] ID-780
[safeconsole.log(address,uint256,address,address)](lib/forge-std/src/safeconsole.sol#L3946-L3973) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3952-L3964)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3966-L3972)

lib/forge-std/src/safeconsole.sol#L3946-L3973


 - [ ] ID-781
[safeconsole.log(uint256,uint256,bytes32,address)](lib/forge-std/src/safeconsole.sol#L9238-L9279) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9246-L9268)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9270-L9278)

lib/forge-std/src/safeconsole.sol#L9238-L9279


 - [ ] ID-782
[safeconsole.log(bytes32,bool,bool)](lib/forge-std/src/safeconsole.sol#L2330-L2367) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2337-L2357)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2359-L2366)

lib/forge-std/src/safeconsole.sol#L2330-L2367


 - [ ] ID-783
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L931-L941) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L936-L938)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L931-L941


 - [ ] ID-784
[safeconsole.log(bool,address,address,uint256)](lib/forge-std/src/safeconsole.sol#L5317-L5344) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5323-L5335)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5337-L5343)

lib/forge-std/src/safeconsole.sol#L5317-L5344


 - [ ] ID-785
[safeconsole.log(bool,bytes32,address,bytes32)](lib/forge-std/src/safeconsole.sol#L7095-L7143) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7105-L7130)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7132-L7142)

lib/forge-std/src/safeconsole.sol#L7095-L7143


 - [ ] ID-786
[safeconsole.log(bytes32,bytes32,uint256,address)](lib/forge-std/src/safeconsole.sol#L12807-L12855) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12817-L12842)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L12844-L12854)

lib/forge-std/src/safeconsole.sol#L12807-L12855


 - [ ] ID-787
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L791-L801) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L796-L798)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L791-L801


 - [ ] ID-788
[safeconsole.log(bytes32,address,address)](lib/forge-std/src/safeconsole.sol#L2128-L2165) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2135-L2155)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2157-L2164)

lib/forge-std/src/safeconsole.sol#L2128-L2165


 - [ ] ID-789
[safeconsole.log(bool,bytes32,bool,uint256)](lib/forge-std/src/safeconsole.sol#L7231-L7272) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7239-L7261)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7263-L7271)

lib/forge-std/src/safeconsole.sol#L7231-L7272


 - [ ] ID-790
[safeconsole.log(bytes32,address,bool,address)](lib/forge-std/src/safeconsole.sol#L10340-L10381) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10348-L10370)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L10372-L10380)

lib/forge-std/src/safeconsole.sol#L10340-L10381


 - [ ] ID-791
[OriginLayerCake.run()](script/src/OriginLayerCake.s.sol#L16-L65) uses assembly
	- [INLINE ASM](script/src/OriginLayerCake.s.sol#L28-L30)

script/src/OriginLayerCake.s.sol#L16-L65


 - [ ] ID-792
[safeconsole.log(bool,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L1307-L1344) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1314-L1334)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1336-L1343)

lib/forge-std/src/safeconsole.sol#L1307-L1344


 - [ ] ID-793
[safeconsole.log(bool,bool,bool,bool)](lib/forge-std/src/safeconsole.sol#L5987-L6014) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5993-L6005)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6007-L6013)

lib/forge-std/src/safeconsole.sol#L5987-L6014


 - [ ] ID-794
[safeconsole.log(address,uint256,bytes32,address)](lib/forge-std/src/safeconsole.sol#L4336-L4377) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4344-L4366)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4368-L4376)

lib/forge-std/src/safeconsole.sol#L4336-L4377


 - [ ] ID-795
[safeconsole.log(uint256,bytes32,uint256,address)](lib/forge-std/src/safeconsole.sol#L9775-L9816) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9783-L9805)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L9807-L9815)

lib/forge-std/src/safeconsole.sol#L9775-L9816


 - [ ] ID-796
[safeconsole.log(address,uint256,uint256,bytes32)](lib/forge-std/src/safeconsole.sol#L4293-L4334) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4301-L4323)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4325-L4333)

lib/forge-std/src/safeconsole.sol#L4293-L4334


 - [ ] ID-797
[safeconsole.log(bytes32,uint256,address,bytes32)](lib/forge-std/src/safeconsole.sol#L11778-L11826) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11788-L11813)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L11815-L11825)

lib/forge-std/src/safeconsole.sol#L11778-L11826


 - [ ] ID-798
[safeconsole.log(address,bytes32,bool,bytes32)](lib/forge-std/src/safeconsole.sol#L4823-L4871) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4833-L4858)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4860-L4870)

lib/forge-std/src/safeconsole.sol#L4823-L4871


 - [ ] ID-799
[safeconsole.log(bool,uint256,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L6916-L6964) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6926-L6951)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6953-L6963)

lib/forge-std/src/safeconsole.sol#L6916-L6964


 - [ ] ID-800
[safeconsole.log(address,bool,address)](lib/forge-std/src/safeconsole.sol#L727-L750) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L732-L742)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L744-L749)

lib/forge-std/src/safeconsole.sol#L727-L750


 - [ ] ID-801
[safeconsole.log(bytes32,bytes32,bytes32)](lib/forge-std/src/safeconsole.sol#L2755-L2806) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2766-L2792)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L2794-L2805)

lib/forge-std/src/safeconsole.sol#L2755-L2806


 - [ ] ID-802
[safeconsole.log(uint256,address,address)](lib/forge-std/src/safeconsole.sol#L1623-L1646) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1628-L1638)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1640-L1645)

lib/forge-std/src/safeconsole.sol#L1623-L1646


 - [ ] ID-803
[safeconsole.log(bool,bytes32,address,address)](lib/forge-std/src/safeconsole.sol#L6966-L7007) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6974-L6996)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L6998-L7006)

lib/forge-std/src/safeconsole.sol#L6966-L7007


 - [ ] ID-804
[safeconsole.log(bool,address,bool,bool)](lib/forge-std/src/safeconsole.sol#L5418-L5445) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5424-L5436)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L5438-L5444)

lib/forge-std/src/safeconsole.sol#L5418-L5445


 - [ ] ID-805
[safeconsole.log(uint256,bool,bool)](lib/forge-std/src/safeconsole.sol#L1762-L1785) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1767-L1777)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L1779-L1784)

lib/forge-std/src/safeconsole.sol#L1762-L1785


 - [ ] ID-806
[safeconsole.log(bool,bytes32,bool,bool)](lib/forge-std/src/safeconsole.sol#L7188-L7229) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7196-L7218)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L7220-L7228)

lib/forge-std/src/safeconsole.sol#L7188-L7229


 - [ ] ID-807
[safeconsole.log(address,bytes32,uint256,bool)](lib/forge-std/src/safeconsole.sol#L4916-L4957) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4924-L4946)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L4948-L4956)

lib/forge-std/src/safeconsole.sol#L4916-L4957


 - [ ] ID-808
[stdStorageSafe.flatten(bytes32[])](lib/forge-std/src/StdStorage.sol#L181-L192) uses assembly
	- [INLINE ASM](lib/forge-std/src/StdStorage.sol#L186-L188)

lib/forge-std/src/StdStorage.sol#L181-L192


 - [ ] ID-809
[safeconsole.log(address,bool,address,uint256)](lib/forge-std/src/safeconsole.sol#L3435-L3462) uses assembly
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3441-L3453)
	- [INLINE ASM](lib/forge-std/src/safeconsole.sol#L3455-L3461)

lib/forge-std/src/safeconsole.sol#L3435-L3462


## boolean-equal
Impact: Informational
Confidence: High
 - [ ] ID-810
[StdCheatsSafe.assumeNotBlacklisted(address,address)](lib/forge-std/src/StdCheats.sol#L208-L226) compares to a boolean constant:
	-[vm.assume(! success || abi.decode(returnData,(bool)) == false)](lib/forge-std/src/StdCheats.sol#L225)

lib/forge-std/src/StdCheats.sol#L208-L226


 - [ ] ID-811
[StdCheatsSafe.assumeNotBlacklisted(address,address)](lib/forge-std/src/StdCheats.sol#L208-L226) compares to a boolean constant:
	-[vm.assume(! success || abi.decode(returnData,(bool)) == false)](lib/forge-std/src/StdCheats.sol#L221)

lib/forge-std/src/StdCheats.sol#L208-L226


## pragma
Impact: Informational
Confidence: High
 - [ ] ID-812
Different versions of Solidity are used:
	- Version used: ['>=0.4.22<0.9.0', '>=0.5.0', '>=0.6.0<0.9.0', '>=0.6.2<0.9.0', '^0.8.13', '^0.8.19']
	- [>=0.4.22<0.9.0](lib/forge-std/src/StdStyle.sol#L2)
	- [>=0.4.22<0.9.0](lib/forge-std/src/console.sol#L2)
	- [>=0.4.22<0.9.0](lib/forge-std/src/console2.sol#L2)
	- [>=0.5.0](lib/forge-std/lib/ds-test/src/test.sol#L16)
	- [>=0.6.0<0.9.0](lib/forge-std/src/StdJson.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/Base.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/Script.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdAssertions.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdChains.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdCheats.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdError.sol#L3)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdInvariant.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdMath.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdStorage.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/StdUtils.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/Test.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/Vm.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/interfaces/IMulticall3.sol#L2)
	- [>=0.6.2<0.9.0](lib/forge-std/src/safeconsole.sol#L2)
	- [ABIEncoderV2](lib/forge-std/src/StdCheats.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/StdInvariant.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/StdJson.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/StdUtils.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/Test.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/Vm.sol#L4)
	- [ABIEncoderV2](lib/forge-std/src/interfaces/IMulticall3.sol#L4)
	- [^0.8.13](script/src/DestinationDeploy.s.sol#L5)
	- [^0.8.13](script/src/DestinationLayerCake.s.sol#L5)
	- [^0.8.13](script/src/OriginDeploy.s.sol#L5)
	- [^0.8.13](script/src/OriginLayerCake.s.sol#L5)
	- [^0.8.13](script/src/TransferDeposits.s.sol#L5)
	- [^0.8.13](script/src/TransportedTokenDeploy.s.sol#L5)
	- [^0.8.13](script/test/TestDeposit.s.sol#L5)
	- [^0.8.13](script/test/TestDestinationAddBandwidth.s.sol#L5)
	- [^0.8.13](script/test/TestOriginAddBandwidth.s.sol#L5)
	- [^0.8.13](script/test/TestSetBalanceChanges.s.sol#L5)
	- [^0.8.13](script/test/TestTokenDeploy.s.sol#L5)
	- [^0.8.13](script/test/TestTransfer.s.sol#L5)
	- [^0.8.13](script/test/TestWithdraw.s.sol#L5)
	- [^0.8.13](src/core/LayerCake.sol#L5)
	- [^0.8.13](src/core/LayerCakeBandwidthManager.sol#L5)
	- [^0.8.13](src/core/LayerCakeCalldataInterface.sol#L5)
	- [^0.8.13](src/core/LayerCakeDeployTools.sol#L5)
	- [^0.8.13](src/core/LayerCakeDestinationDeploy.sol#L5)
	- [^0.8.13](src/core/LayerCakeExecutionProof.sol#L5)
	- [^0.8.13](src/core/LayerCakeOriginDeploy.sol#L5)
	- [^0.8.13](src/core/LayerCakeStorageManager.sol#L5)
	- [^0.8.13](src/core/LayerCakeStorageSlot.sol#L5)
	- [^0.8.13](src/core/LayerCakeTools.sol#L5)
	- [^0.8.13](src/core/LayerCakeTransportedToken.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCake.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeDeployTools.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeExecutionProof.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeStorageManager.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeStorageSlot.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeTools.f.sol#L5)
	- [^0.8.13](src/core/flattened/LayerCakeTransportedToken.f.sol#L5)
	- [^0.8.13](src/test/BandwidthProviderController.sol#L5)
	- [^0.8.13](src/test/Counter.sol#L5)
	- [^0.8.13](src/test/LayerCakeBandwidthChangesTest.t.sol#L5)
	- [^0.8.13](src/test/LayerCakeNegationOperationsTest.t.sol#L5)
	- [^0.8.13](src/test/LayerCakeStandardOperationsTest.t.sol#L5)
	- [^0.8.13](src/test/LayerCakeVerifiedSetupTest.t.sol#L5)
	- [^0.8.13](src/test/NegationOperationsController.sol#L5)
	- [^0.8.13](src/test/StandardOperationsController.sol#L5)
	- [^0.8.13](src/test/TestWETH.sol#L5)
	- [^0.8.13](src/test/UserController.sol#L5)
	- [^0.8.13](src/test/VerifiedSetupController.sol#L5)
	- [^0.8.13](src/test/flattened/TestWETH.f.sol#L5)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#L2)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/Context.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#L4)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L5)
	- [^0.8.19](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L5)

lib/forge-std/src/StdStyle.sol#L2


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-813
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L300-L310) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L300-L310


 - [ ] ID-814
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L640-L643) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L640-L643


 - [ ] ID-815
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L839-L841) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L839-L841


 - [ ] ID-816
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L695-L697) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L695-L697


 - [ ] ID-817
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L276) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L276


 - [ ] ID-818
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L288-L290) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L288-L290


 - [ ] ID-819
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L769-L771) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L769-L771


 - [ ] ID-820
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1032-L1034) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1032-L1034


 - [ ] ID-821
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L208-L210) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L208-L210


 - [ ] ID-822
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L222-L224) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L222-L224


 - [ ] ID-823
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32,string)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1099-L1105) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1099-L1105


 - [ ] ID-824
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L408-L410) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L408-L410


 - [ ] ID-825
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1041-L1043) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1041-L1043


 - [ ] ID-826
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L940-L942) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L940-L942


 - [ ] ID-827
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L757-L760) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L757-L760


 - [ ] ID-828
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L861-L864) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L861-L864


 - [ ] ID-829
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L947-L949) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L947-L949


 - [ ] ID-830
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L791-L801) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L791-L801


 - [ ] ID-831
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256,string)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L779-L781) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L779-L781


 - [ ] ID-832
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1007-L1017) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1007-L1017


 - [ ] ID-833
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L712-L714) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L712-L714


 - [ ] ID-834
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1077-L1080) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1077-L1080


 - [ ] ID-835
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417


 - [ ] ID-836
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L374-L384) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L374-L384


 - [ ] ID-837
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L334-L336) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L334-L336


 - [ ] ID-838
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1468-L1484) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1468-L1484


 - [ ] ID-839
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L728-L730) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L728-L730


 - [ ] ID-840
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1048-L1050) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1048-L1050


 - [ ] ID-841
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L362-L364) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L362-L364


 - [ ] ID-842
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343


 - [ ] ID-843
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1068-L1071) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1068-L1071


 - [ ] ID-844
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350


 - [ ] ID-845
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L234-L236) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L234-L236


 - [ ] ID-846
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L825-L827) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L825-L827


 - [ ] ID-847
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L524-L534) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L524-L534


 - [ ] ID-848
[Context._msgData()](src/test/flattened/TestWETH.f.sol#L126-L128) is never used and should be removed

src/test/flattened/TestWETH.f.sol#L126-L128


 - [ ] ID-849
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L832-L834) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L832-L834


 - [ ] ID-850
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L626-L628) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L626-L628


 - [ ] ID-851
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L735-L737) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L735-L737


 - [ ] ID-852
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L748-L751) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L748-L751


 - [ ] ID-853
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256,string)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L883-L889) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L883-L889


 - [ ] ID-854
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L498-L500) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L498-L500


 - [ ] ID-855
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L873-L875) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L873-L875


 - [ ] ID-856
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L816-L818) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L816-L818


 - [ ] ID-857
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L512-L514) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L512-L514


 - [ ] ID-858
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L899-L909) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L899-L909


 - [ ] ID-859
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L324-L326) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L324-L326


 - [ ] ID-860
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L852-L855) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L852-L855


 - [ ] ID-861
[EnumerableMap.get(EnumerableMap.Bytes32ToBytes32Map,bytes32,string)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L677-L685) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L677-L685


 - [ ] ID-862
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1055-L1057) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1055-L1057


 - [ ] ID-863
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L721-L723) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L721-L723


 - [ ] ID-864
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeCalldataInterface.f.sol#L77-L79) is never used and should be removed

src/core/flattened/LayerCakeCalldataInterface.f.sol#L77-L79


 - [ ] ID-865
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1089-L1091) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1089-L1091


 - [ ] ID-866
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L398-L400) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L398-L400


 - [ ] ID-867
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L960-L963) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L960-L963


 - [ ] ID-868
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1115-L1125) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1115-L1125


 - [ ] ID-869
[EnumerableMap.get(EnumerableMap.AddressToUintMap,address,string)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L991-L997) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L991-L997


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-870
Pragma version[^0.8.13](src/core/LayerCakeBandwidthManager.sol#L5) allows old versions

src/core/LayerCakeBandwidthManager.sol#L5


 - [ ] ID-871
Pragma version[^0.8.13](src/core/LayerCakeStorageSlot.sol#L5) allows old versions

src/core/LayerCakeStorageSlot.sol#L5


 - [ ] ID-872
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdChains.sol#L2) is too complex

lib/forge-std/src/StdChains.sol#L2


 - [ ] ID-873
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/Test.sol#L2) is too complex

lib/forge-std/src/Test.sol#L2


 - [ ] ID-874
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdCheats.sol#L2) is too complex

lib/forge-std/src/StdCheats.sol#L2


 - [ ] ID-875
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol#L4


 - [ ] ID-876
Pragma version[^0.8.13](script/src/TransferDeposits.s.sol#L5) allows old versions

script/src/TransferDeposits.s.sol#L5


 - [ ] ID-877
Pragma version[^0.8.13](src/core/LayerCakeDeployTools.sol#L5) allows old versions

src/core/LayerCakeDeployTools.sol#L5


 - [ ] ID-878
Pragma version[^0.8.13](script/test/TestOriginAddBandwidth.s.sol#L5) allows old versions

script/test/TestOriginAddBandwidth.s.sol#L5


 - [ ] ID-879
Pragma version[^0.8.13](script/test/TestTokenDeploy.s.sol#L5) allows old versions

script/test/TestTokenDeploy.s.sol#L5


 - [ ] ID-880
Pragma version[^0.8.13](src/core/LayerCakeExecutionProof.sol#L5) allows old versions

src/core/LayerCakeExecutionProof.sol#L5


 - [ ] ID-881
Pragma version[^0.8.13](src/test/LayerCakeStandardOperationsTest.t.sol#L5) allows old versions

src/test/LayerCakeStandardOperationsTest.t.sol#L5


 - [ ] ID-882
Pragma version[^0.8.13](script/src/DestinationLayerCake.s.sol#L5) allows old versions

script/src/DestinationLayerCake.s.sol#L5


 - [ ] ID-883
Pragma version[^0.8.13](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5) allows old versions

src/core/flattened/LayerCakeBandwidthManager.f.sol#L5


 - [ ] ID-884
Pragma version[^0.8.13](src/core/LayerCakeCalldataInterface.sol#L5) allows old versions

src/core/LayerCakeCalldataInterface.sol#L5


 - [ ] ID-885
Pragma version[^0.8.13](src/core/LayerCakeTools.sol#L5) allows old versions

src/core/LayerCakeTools.sol#L5


 - [ ] ID-886
Pragma version[^0.8.13](script/test/TestSetBalanceChanges.s.sol#L5) allows old versions

script/test/TestSetBalanceChanges.s.sol#L5


 - [ ] ID-887
Pragma version[^0.8.13](src/test/Counter.sol#L5) allows old versions

src/test/Counter.sol#L5


 - [ ] ID-888
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdMath.sol#L2) is too complex

lib/forge-std/src/StdMath.sol#L2


 - [ ] ID-889
Pragma version[^0.8.13](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) allows old versions

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-890
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#L4


 - [ ] ID-891
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol#L4


 - [ ] ID-892
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdAssertions.sol#L2) is too complex

lib/forge-std/src/StdAssertions.sol#L2


 - [ ] ID-893
solc-0.8.20 is not recommended for deployment

 - [ ] ID-894
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/Vm.sol#L2) is too complex

lib/forge-std/src/Vm.sol#L2


 - [ ] ID-895
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/Context.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/Context.sol#L4


 - [ ] ID-896
Pragma version[^0.8.13](src/test/VerifiedSetupController.sol#L5) allows old versions

src/test/VerifiedSetupController.sol#L5


 - [ ] ID-897
Pragma version[^0.8.13](src/test/TestWETH.sol#L5) allows old versions

src/test/TestWETH.sol#L5


 - [ ] ID-898
Pragma version[^0.8.13](src/core/flattened/LayerCakeTools.f.sol#L5) allows old versions

src/core/flattened/LayerCakeTools.f.sol#L5


 - [ ] ID-899
Pragma version[^0.8.13](script/test/TestTransfer.s.sol#L5) allows old versions

script/test/TestTransfer.s.sol#L5


 - [ ] ID-900
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#L2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#L2


 - [ ] ID-901
Pragma version[^0.8.13](src/test/StandardOperationsController.sol#L5) allows old versions

src/test/StandardOperationsController.sol#L5


 - [ ] ID-902
Pragma version[^0.8.13](script/test/TestDestinationAddBandwidth.s.sol#L5) allows old versions

script/test/TestDestinationAddBandwidth.s.sol#L5


 - [ ] ID-903
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/Strings.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/Strings.sol#L4


 - [ ] ID-904
Pragma version[^0.8.13](src/core/LayerCakeStorageManager.sol#L5) allows old versions

src/core/LayerCakeStorageManager.sol#L5


 - [ ] ID-905
Pragma version[^0.8.13](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) allows old versions

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-906
Pragma version[^0.8.13](script/src/OriginLayerCake.s.sol#L5) allows old versions

script/src/OriginLayerCake.s.sol#L5


 - [ ] ID-907
Pragma version[^0.8.13](script/test/TestWithdraw.s.sol#L5) allows old versions

script/test/TestWithdraw.s.sol#L5


 - [ ] ID-908
Pragma version[>=0.4.22<0.9.0](lib/forge-std/src/StdStyle.sol#L2) is too complex

lib/forge-std/src/StdStyle.sol#L2


 - [ ] ID-909
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/math/Math.sol#L4


 - [ ] ID-910
Pragma version[^0.8.13](src/core/flattened/LayerCake.f.sol#L5) allows old versions

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-911
Pragma version[^0.8.13](src/core/flattened/LayerCakeStorageManager.f.sol#L5) allows old versions

src/core/flattened/LayerCakeStorageManager.f.sol#L5


 - [ ] ID-912
Pragma version[^0.8.13](src/test/NegationOperationsController.sol#L5) allows old versions

src/test/NegationOperationsController.sol#L5


 - [ ] ID-913
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol#L4


 - [ ] ID-914
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdUtils.sol#L2) is too complex

lib/forge-std/src/StdUtils.sol#L2


 - [ ] ID-915
Pragma version[^0.8.13](script/src/DestinationDeploy.s.sol#L5) allows old versions

script/src/DestinationDeploy.s.sol#L5


 - [ ] ID-916
Pragma version[>=0.4.22<0.9.0](lib/forge-std/src/console.sol#L2) is too complex

lib/forge-std/src/console.sol#L2


 - [ ] ID-917
Pragma version[>=0.6.0<0.9.0](lib/forge-std/src/StdJson.sol#L2) is too complex

lib/forge-std/src/StdJson.sol#L2


 - [ ] ID-918
Pragma version[^0.8.13](src/core/flattened/LayerCakeStorageSlot.f.sol#L5) allows old versions

src/core/flattened/LayerCakeStorageSlot.f.sol#L5


 - [ ] ID-919
Pragma version[^0.8.13](src/core/flattened/LayerCakeExecutionProof.f.sol#L5) allows old versions

src/core/flattened/LayerCakeExecutionProof.f.sol#L5


 - [ ] ID-920
Pragma version[^0.8.13](src/test/UserController.sol#L5) allows old versions

src/test/UserController.sol#L5


 - [ ] ID-921
Pragma version[^0.8.13](src/core/LayerCakeOriginDeploy.sol#L5) allows old versions

src/core/LayerCakeOriginDeploy.sol#L5


 - [ ] ID-922
Pragma version[>=0.4.22<0.9.0](lib/forge-std/src/console2.sol#L2) is too complex

lib/forge-std/src/console2.sol#L2


 - [ ] ID-923
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/interfaces/IMulticall3.sol#L2) is too complex

lib/forge-std/src/interfaces/IMulticall3.sol#L2


 - [ ] ID-924
Pragma version[^0.8.13](src/core/LayerCakeDestinationDeploy.sol#L5) allows old versions

src/core/LayerCakeDestinationDeploy.sol#L5


 - [ ] ID-925
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/Base.sol#L2) is too complex

lib/forge-std/src/Base.sol#L2


 - [ ] ID-926
Pragma version[^0.8.13](src/test/LayerCakeBandwidthChangesTest.t.sol#L5) allows old versions

src/test/LayerCakeBandwidthChangesTest.t.sol#L5


 - [ ] ID-927
Pragma version[^0.8.13](src/core/LayerCake.sol#L5) allows old versions

src/core/LayerCake.sol#L5


 - [ ] ID-928
Pragma version[^0.8.13](src/test/LayerCakeVerifiedSetupTest.t.sol#L5) allows old versions

src/test/LayerCakeVerifiedSetupTest.t.sol#L5


 - [ ] ID-929
Pragma version[^0.8.13](script/src/TransportedTokenDeploy.s.sol#L5) allows old versions

script/src/TransportedTokenDeploy.s.sol#L5


 - [ ] ID-930
Pragma version[>=0.5.0](lib/forge-std/lib/ds-test/src/test.sol#L16) allows old versions

lib/forge-std/lib/ds-test/src/test.sol#L16


 - [ ] ID-931
Pragma version[^0.8.13](src/core/flattened/LayerCakeDeployTools.f.sol#L5) allows old versions

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-932
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol#L5


 - [ ] ID-933
Pragma version[^0.8.13](script/src/OriginDeploy.s.sol#L5) allows old versions

script/src/OriginDeploy.s.sol#L5


 - [ ] ID-934
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol#L5


 - [ ] ID-935
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdError.sol#L3) is too complex

lib/forge-std/src/StdError.sol#L3


 - [ ] ID-936
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdStorage.sol#L2) is too complex

lib/forge-std/src/StdStorage.sol#L2


 - [ ] ID-937
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/StdInvariant.sol#L2) is too complex

lib/forge-std/src/StdInvariant.sol#L2


 - [ ] ID-938
Pragma version[^0.8.13](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5) allows old versions

src/core/flattened/LayerCakeCalldataInterface.f.sol#L5


 - [ ] ID-939
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/Script.sol#L2) is too complex

lib/forge-std/src/Script.sol#L2


 - [ ] ID-940
Pragma version[^0.8.13](script/test/TestDeposit.s.sol#L5) allows old versions

script/test/TestDeposit.s.sol#L5


 - [ ] ID-941
Pragma version[^0.8.19](lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol#L4


 - [ ] ID-942
Pragma version[^0.8.13](src/test/flattened/TestWETH.f.sol#L5) allows old versions

src/test/flattened/TestWETH.f.sol#L5


 - [ ] ID-943
Pragma version[^0.8.13](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) allows old versions

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-944
Pragma version[^0.8.13](src/test/BandwidthProviderController.sol#L5) allows old versions

src/test/BandwidthProviderController.sol#L5


 - [ ] ID-945
Pragma version[>=0.6.2<0.9.0](lib/forge-std/src/safeconsole.sol#L2) is too complex

lib/forge-std/src/safeconsole.sol#L2


 - [ ] ID-946
Pragma version[^0.8.13](src/test/LayerCakeNegationOperationsTest.t.sol#L5) allows old versions

src/test/LayerCakeNegationOperationsTest.t.sol#L5


 - [ ] ID-947
Pragma version[^0.8.13](src/core/LayerCakeTransportedToken.sol#L5) allows old versions

src/core/LayerCakeTransportedToken.sol#L5


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-948
Low level call in [StdUtils.console2_log(string,uint256)](lib/forge-std/src/StdUtils.sol#L189-L192):
	- [(status) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature(log(string,uint256),p0,p1))](lib/forge-std/src/StdUtils.sol#L190)

lib/forge-std/src/StdUtils.sol#L189-L192


 - [ ] ID-949
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/LayerCakeCalldataInterface.sol#L10-L19):
	- [(success,result) = address(_recipient).call(_callData)](src/core/LayerCakeCalldataInterface.sol#L11)

src/core/LayerCakeCalldataInterface.sol#L10-L19


 - [ ] ID-950
Low level call in [StdAssertions.assertEqCall(address,bytes,address,bytes,bool)](lib/forge-std/src/StdAssertions.sol#L344-L375):
	- [(successA,returnDataA) = address(targetA).call(callDataA)](lib/forge-std/src/StdAssertions.sol#L351)
	- [(successB,returnDataB) = address(targetB).call(callDataB)](lib/forge-std/src/StdAssertions.sol#L352)

lib/forge-std/src/StdAssertions.sol#L344-L375


 - [ ] ID-951
Low level call in [stdStorageSafe.find(StdStorage)](lib/forge-std/src/StdStorage.sol#L32-L105):
	- [(rdat) = who.staticcall(cald)](lib/forge-std/src/StdStorage.sol#L46)
	- [(success,rdat_scope_0) = who.staticcall(cald)](lib/forge-std/src/StdStorage.sol#L76)

lib/forge-std/src/StdStorage.sol#L32-L105


 - [ ] ID-952
Low level call in [DSTest.fail()](lib/forge-std/lib/ds-test/src/test.sol#L65-L76):
	- [(status) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(store(address,bytes32,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed),bytes32(uint256(0x01)))))](lib/forge-std/lib/ds-test/src/test.sol#L67-L72)

lib/forge-std/lib/ds-test/src/test.sol#L65-L76


 - [ ] ID-953
Low level call in [StdCheats.dealERC721(address,address,uint256)](lib/forge-std/src/StdCheats.sol#L768-L788):
	- [(successMinted,ownerData) = token.staticcall(abi.encodeWithSelector(0x6352211e,id))](lib/forge-std/src/StdCheats.sol#L770)
	- [(fromBalData) = token.staticcall(abi.encodeWithSelector(0x70a08231,abi.decode(ownerData,(address))))](lib/forge-std/src/StdCheats.sol#L774-L775)
	- [(toBalData) = token.staticcall(abi.encodeWithSelector(0x70a08231,to))](lib/forge-std/src/StdCheats.sol#L779)

lib/forge-std/src/StdCheats.sol#L768-L788


 - [ ] ID-954
Low level call in [StdCheatsSafe.assumeNotBlacklisted(address,address)](lib/forge-std/src/StdCheats.sol#L208-L226):
	- [(success,returnData) = token.staticcall(abi.encodeWithSelector(0xfe575a87,addr))](lib/forge-std/src/StdCheats.sol#L220)
	- [(success,returnData) = token.staticcall(abi.encodeWithSelector(0xe47d6060,addr))](lib/forge-std/src/StdCheats.sol#L224)

lib/forge-std/src/StdCheats.sol#L208-L226


 - [ ] ID-955
Low level call in [StdCheatsSafe._isPayable(address)](lib/forge-std/src/StdCheats.sol#L283-L299):
	- [(success) = address(addr).call{value: 1}()](lib/forge-std/src/StdCheats.sol#L292)

lib/forge-std/src/StdCheats.sol#L283-L299


 - [ ] ID-956
Low level call in [StdCheats.deal(address,address,uint256,bool)](lib/forge-std/src/StdCheats.sol#L722-L741):
	- [(balData) = token.staticcall(abi.encodeWithSelector(0x70a08231,to))](lib/forge-std/src/StdCheats.sol#L724)
	- [(totSupData) = token.staticcall(abi.encodeWithSelector(0x18160ddd))](lib/forge-std/src/StdCheats.sol#L732)

lib/forge-std/src/StdCheats.sol#L722-L741


 - [ ] ID-957
Low level call in [stdStorage.checked_write(StdStorage,bytes32)](lib/forge-std/src/StdStorage.sol#L255-L285):
	- [(rdat) = who.staticcall(cald)](lib/forge-std/src/StdStorage.sol#L269)

lib/forge-std/src/StdStorage.sol#L255-L285


 - [ ] ID-958
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L83-L92):
	- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L83-L92


 - [ ] ID-959
Low level call in [StdCheats.dealERC1155(address,address,uint256,uint256,bool)](lib/forge-std/src/StdCheats.sol#L743-L766):
	- [(balData) = token.staticcall(abi.encodeWithSelector(0x00fdd58e,to,id))](lib/forge-std/src/StdCheats.sol#L745)
	- [(totSupData) = token.staticcall(abi.encodeWithSelector(0xbd85b039,id))](lib/forge-std/src/StdCheats.sol#L753)

lib/forge-std/src/StdCheats.sol#L743-L766


 - [ ] ID-960
Low level call in [StdCheats.deployCodeTo(string,bytes,uint256,address)](lib/forge-std/src/StdCheats.sol#L798-L804):
	- [(success,runtimeBytecode) = where.call{value: value}()](lib/forge-std/src/StdCheats.sol#L801)

lib/forge-std/src/StdCheats.sol#L798-L804


 - [ ] ID-961
Low level call in [DSTest.failed()](lib/forge-std/lib/ds-test/src/test.sol#L47-L63):
	- [(retdata) = HEVM_ADDRESS.call(abi.encodePacked(bytes4(keccak256(bytes)(load(address,bytes32))),abi.encode(HEVM_ADDRESS,bytes32(failed))))](lib/forge-std/lib/ds-test/src/test.sol#L53-L58)

lib/forge-std/lib/ds-test/src/test.sol#L47-L63


 - [ ] ID-962
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L645-L654):
	- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCake.f.sol#L646)

src/core/flattened/LayerCake.f.sol#L645-L654


 - [ ] ID-963
Low level call in [StdUtils.console2_log(string,string)](lib/forge-std/src/StdUtils.sol#L194-L197):
	- [(status) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature(log(string,string),p0,p1))](lib/forge-std/src/StdUtils.sol#L195)

lib/forge-std/src/StdUtils.sol#L194-L197


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-964
Parameter [stdStorage.sig(StdStorage,string)._sig](lib/forge-std/src/StdStorage.sol#L214) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L214


 - [ ] ID-965
Function [stdStorageSafe.read_uint(StdStorage)](lib/forge-std/src/StdStorage.sol#L163-L165) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L163-L165


 - [ ] ID-966
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthAmount](src/core/LayerCakeBandwidthManager.sol#L98) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L98


 - [ ] ID-967
Parameter [stdStorage.target(StdStorage,address)._target](lib/forge-std/src/StdStorage.sol#L206) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L206


 - [ ] ID-968
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._callData](src/core/LayerCakeCalldataInterface.sol#L10) is not in mixedCase

src/core/LayerCakeCalldataInterface.sol#L10


 - [ ] ID-969
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._destinationChainId](src/core/LayerCakeTools.sol#L47) is not in mixedCase

src/core/LayerCakeTools.sol#L47


 - [ ] ID-970
Function [stdStorageSafe.read_int(StdStorage)](lib/forge-std/src/StdStorage.sol#L167-L169) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L167-L169


 - [ ] ID-971
Parameter [stdStorageSafe.sig(StdStorage,bytes4)._sig](lib/forge-std/src/StdStorage.sol#L112) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L112


 - [ ] ID-972
Event [DSTest.logs(bytes)](lib/forge-std/lib/ds-test/src/test.sol#L20) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L20


 - [ ] ID-973
Event [DSTest.log_named_int(string,int256)](lib/forge-std/lib/ds-test/src/test.sol#L33) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L33


 - [ ] ID-974
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._hash](src/core/LayerCakeTools.sol#L72) is not in mixedCase

src/core/LayerCakeTools.sol#L72


 - [ ] ID-975
Parameter [BandwidthProviderController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._token](src/test/BandwidthProviderController.sol#L43) is not in mixedCase

src/test/BandwidthProviderController.sol#L43


 - [ ] ID-976
Variable [LayerCakeOriginDeploy._deposits](src/core/LayerCakeOriginDeploy.sol#L20) is not in mixedCase

src/core/LayerCakeOriginDeploy.sol#L20


 - [ ] ID-977
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._executionId](src/core/LayerCake.sol#L146) is not in mixedCase

src/core/LayerCake.sol#L146


 - [ ] ID-978
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._bandwidthProvider](src/core/LayerCakeBandwidthManager.sol#L58) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L58


 - [ ] ID-979
Parameter [UserController.updateController(address)._controller](src/test/UserController.sol#L27) is not in mixedCase

src/test/UserController.sol#L27


 - [ ] ID-980
Function [stdStorage.checked_write(StdStorage,bytes32)](lib/forge-std/src/StdStorage.sol#L255-L285) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L255-L285


 - [ ] ID-981
Parameter [NegationOperationsController.storeInitialNegationOperations(bytes32)._invalidExecutionId](src/test/NegationOperationsController.sol#L120) is not in mixedCase

src/test/NegationOperationsController.sol#L120


 - [ ] ID-982
Parameter [safeconsole.log.asm_0.writeString().w_log_asm_0_writeString](lib/forge-std/src/safeconsole.sol#L13200) is not in mixedCase

lib/forge-std/src/safeconsole.sol#L13200


 - [ ] ID-983
Function [StdUtils.console2_log(string,string)](lib/forge-std/src/StdUtils.sol#L194-L197) is not in mixedCase

lib/forge-std/src/StdUtils.sol#L194-L197


 - [ ] ID-984
Parameter [BandwidthProviderController.executeNegationOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._negationExecutionProof](src/test/BandwidthProviderController.sol#L53) is not in mixedCase

src/test/BandwidthProviderController.sol#L53


 - [ ] ID-985
Constant [StdUtils.multicall](lib/forge-std/src/StdUtils.sol#L14) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdUtils.sol#L14


 - [ ] ID-986
Parameter [BandwidthProviderController.addBandwidth(IERC20,LayerCake,uint256,uint256)._layercake](src/test/BandwidthProviderController.sol#L59) is not in mixedCase

src/test/BandwidthProviderController.sol#L59


 - [ ] ID-987
Parameter [BandwidthProviderController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._layercake](src/test/BandwidthProviderController.sol#L43) is not in mixedCase

src/test/BandwidthProviderController.sol#L43


 - [ ] ID-988
Parameter [stdStorage.sig(StdStorage,bytes4)._sig](lib/forge-std/src/StdStorage.sol#L210) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L210


 - [ ] ID-989
Constant [stdJson.vm](lib/forge-std/src/StdJson.sol#L30) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdJson.sol#L30


 - [ ] ID-990
Event [StdAssertions.log_array(address[])](lib/forge-std/src/StdAssertions.sol#L10) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L10


 - [ ] ID-991
Contract [console2](lib/forge-std/src/console2.sol#L9-L1559) is not in CapWords

lib/forge-std/src/console2.sol#L9-L1559


 - [ ] ID-992
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionId](src/core/LayerCakeStorageManager.sol#L110) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L110


 - [ ] ID-993
Constant [StdCheatsSafe.vm](lib/forge-std/src/StdCheats.sol#L10) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdCheats.sol#L10


 - [ ] ID-994
Function [stdStorage.checked_write(StdStorage,bool)](lib/forge-std/src/StdStorage.sol#L246-L253) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L246-L253


 - [ ] ID-995
Parameter [BandwidthProviderController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._operations](src/test/BandwidthProviderController.sol#L43) is not in mixedCase

src/test/BandwidthProviderController.sol#L43


 - [ ] ID-996
Parameter [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)._operations](src/core/LayerCake.sol#L85) is not in mixedCase

src/core/LayerCake.sol#L85


 - [ ] ID-997
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionTime](src/core/LayerCakeStorageManager.sol#L86) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L86


 - [ ] ID-998
Parameter [StandardOperationsController.cancelStandardOperationsTransferOnly(uint256)._nonce](src/test/StandardOperationsController.sol#L221) is not in mixedCase

src/test/StandardOperationsController.sol#L221


 - [ ] ID-999
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._operations](src/core/LayerCakeTools.sol#L56) is not in mixedCase

src/core/LayerCakeTools.sol#L56


 - [ ] ID-1000
Function [stdStorageSafe.read_bytes32(StdStorage)](lib/forge-std/src/StdStorage.sol#L148-L150) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L148-L150


 - [ ] ID-1001
Parameter [UserController.depositToLayerCakeOriginDeploy(IERC20,LayerCakeOriginDeploy,uint256)._layerCakeOriginDeploy](src/test/UserController.sol#L55) is not in mixedCase

src/test/UserController.sol#L55


 - [ ] ID-1002
Parameter [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)._partialDenominator](src/test/StandardOperationsController.sol#L179) is not in mixedCase

src/test/StandardOperationsController.sol#L179


 - [ ] ID-1003
Parameter [NegationOperationsController.executeValidNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.Operations,uint256)._invalidExecutionProof](src/test/NegationOperationsController.sol#L247) is not in mixedCase

src/test/NegationOperationsController.sol#L247


 - [ ] ID-1004
Function [stdStorage.with_key(StdStorage,bytes32)](lib/forge-std/src/StdStorage.sol#L226-L228) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L226-L228


 - [ ] ID-1005
Parameter [NegationOperationsController.executeValidNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.Operations,uint256)._negationOperations](src/test/NegationOperationsController.sol#L248) is not in mixedCase

src/test/NegationOperationsController.sol#L248


 - [ ] ID-1006
Function [stdStorage.read_uint(StdStorage)](lib/forge-std/src/StdStorage.sol#L299-L301) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L299-L301


 - [ ] ID-1007
Event [DSTest.log_named_decimal_int(string,int256,uint256)](lib/forge-std/lib/ds-test/src/test.sol#L31) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L31


 - [ ] ID-1008
Parameter [UserController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._layercake](src/test/UserController.sol#L41) is not in mixedCase

src/test/UserController.sol#L41


 - [ ] ID-1009
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._addToUsedBandwidth](src/core/LayerCakeBandwidthManager.sol#L58) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L58


 - [ ] ID-1010
Event [DSTest.log_named_bytes(string,bytes)](lib/forge-std/lib/ds-test/src/test.sol#L35) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L35


 - [ ] ID-1011
Constant [StdCheats.vm](lib/forge-std/src/StdCheats.sol#L639) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdCheats.sol#L639


 - [ ] ID-1012
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._fee](src/core/LayerCakeBandwidthManager.sol#L116) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L116


 - [ ] ID-1013
Function [stdStorageSafe.read_address(StdStorage)](lib/forge-std/src/StdStorage.sol#L159-L161) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L159-L161


 - [ ] ID-1014
Parameter [stdStorage.depth(StdStorage,uint256)._depth](lib/forge-std/src/StdStorage.sol#L230) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L230


 - [ ] ID-1015
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._amount](src/core/LayerCakeBandwidthManager.sol#L58) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L58


 - [ ] ID-1016
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionId](src/core/LayerCakeStorageManager.sol#L96) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L96


 - [ ] ID-1017
Event [StdAssertions.log_array(uint256[])](lib/forge-std/src/StdAssertions.sol#L8) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L8


 - [ ] ID-1018
Variable [Script.IS_SCRIPT](lib/forge-std/src/Script.sol#L26) is not in mixedCase

lib/forge-std/src/Script.sol#L26


 - [ ] ID-1019
Parameter [LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/LayerCakeDestinationDeploy.sol#L52) is not in mixedCase

src/core/LayerCakeDestinationDeploy.sol#L52


 - [ ] ID-1020
Parameter [LayerCakeStorageSlot.getExecutionIdStored(bytes32)._executionId](src/core/LayerCakeStorageSlot.sol#L48) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L48


 - [ ] ID-1021
Event [stdStorageSafe.WARNING_UninitedSlot(address,uint256)](lib/forge-std/src/StdStorage.sol#L18) is not in CapWords

lib/forge-std/src/StdStorage.sol#L18


 - [ ] ID-1022
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/LayerCakeStorageManager.sol#L119) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L119


 - [ ] ID-1023
Parameter [UserController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._token](src/test/UserController.sol#L41) is not in mixedCase

src/test/UserController.sol#L41


 - [ ] ID-1024
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._addedFee](src/core/LayerCake.sol#L146) is not in mixedCase

src/core/LayerCake.sol#L146


 - [ ] ID-1025
Parameter [BandwidthProviderController.executeNegationOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/test/BandwidthProviderController.sol#L54) is not in mixedCase

src/test/BandwidthProviderController.sol#L54


 - [ ] ID-1026
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/LayerCakeStorageSlot.sol#L66) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L66


 - [ ] ID-1027
Contract [console](lib/forge-std/src/console.sol#L4-L1534) is not in CapWords

lib/forge-std/src/console.sol#L4-L1534


 - [ ] ID-1028
Parameter [LayerCake.addBandwidth(uint256)._bandwidthAmount](src/core/LayerCake.sol#L133) is not in mixedCase

src/core/LayerCake.sol#L133


 - [ ] ID-1029
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._initialNegation](src/core/LayerCakeBandwidthManager.sol#L117) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L117


 - [ ] ID-1030
Function [stdStorage.read_int(StdStorage)](lib/forge-std/src/StdStorage.sol#L303-L305) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L303-L305


 - [ ] ID-1031
Constant [StdChains.vm](lib/forge-std/src/StdChains.sol#L35) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdChains.sol#L35


 - [ ] ID-1032
Event [DSTest.log_uint(uint256)](lib/forge-std/lib/ds-test/src/test.sol#L25) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L25


 - [ ] ID-1033
Event [DSTest.log_named_bytes32(string,bytes32)](lib/forge-std/lib/ds-test/src/test.sol#L30) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L30


 - [ ] ID-1034
Parameter [BandwidthProviderController.executeStandardOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof)._layercake](src/test/BandwidthProviderController.sol#L29) is not in mixedCase

src/test/BandwidthProviderController.sol#L29


 - [ ] ID-1035
Parameter [LayerCake.subtractBandwidth(uint256)._bandwidthAmount](src/core/LayerCake.sol#L140) is not in mixedCase

src/core/LayerCake.sol#L140


 - [ ] ID-1036
Event [DSTest.log_named_decimal_uint(string,uint256,uint256)](lib/forge-std/lib/ds-test/src/test.sol#L32) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L32


 - [ ] ID-1037
Function [stdStorage.checked_write(StdStorage,address)](lib/forge-std/src/StdStorage.sol#L234-L236) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L234-L236


 - [ ] ID-1038
Parameter [BandwidthProviderController.addBandwidth(IERC20,LayerCake,uint256,uint256)._token](src/test/BandwidthProviderController.sol#L59) is not in mixedCase

src/test/BandwidthProviderController.sol#L59


 - [ ] ID-1039
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._sender](src/core/LayerCakeStorageManager.sol#L110) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L110


 - [ ] ID-1040
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/LayerCakeStorageManager.sol#L119) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L119


 - [ ] ID-1041
Parameter [BandwidthProviderController.executeCancelStandardOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof)._layercake](src/test/BandwidthProviderController.sol#L36) is not in mixedCase

src/test/BandwidthProviderController.sol#L36


 - [ ] ID-1042
Function [stdStorage.read_bool(StdStorage)](lib/forge-std/src/StdStorage.sol#L291-L293) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L291-L293


 - [ ] ID-1043
Parameter [BandwidthProviderController.executeCancelStandardOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/test/BandwidthProviderController.sol#L36) is not in mixedCase

src/test/BandwidthProviderController.sol#L36


 - [ ] ID-1044
Parameter [LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)._operations](src/core/LayerCake.sol#L117) is not in mixedCase

src/core/LayerCake.sol#L117


 - [ ] ID-1045
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/LayerCakeDeployTools.sol#L16) is not in mixedCase

src/core/LayerCakeDeployTools.sol#L16


 - [ ] ID-1046
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._sender](src/core/LayerCakeStorageSlot.sol#L60) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L60


 - [ ] ID-1047
Event [DSTest.log_int(int256)](lib/forge-std/lib/ds-test/src/test.sol#L24) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L24


 - [ ] ID-1048
Parameter [UserController.cancelStandardOperations(LayerCake,LayerCakeExecutionProof.Operations)._operations](src/test/UserController.sol#L49) is not in mixedCase

src/test/UserController.sol#L49


 - [ ] ID-1049
Event [DSTest.log_address(address)](lib/forge-std/lib/ds-test/src/test.sol#L22) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L22


 - [ ] ID-1050
Event [DSTest.log_named_string(string,string)](lib/forge-std/lib/ds-test/src/test.sol#L36) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L36


 - [ ] ID-1051
Contract [stdStorage](lib/forge-std/src/StdStorage.sol#L195-L331) is not in CapWords

lib/forge-std/src/StdStorage.sol#L195-L331


 - [ ] ID-1052
Contract [stdJson](lib/forge-std/src/StdJson.sol#L29-L179) is not in CapWords

lib/forge-std/src/StdJson.sol#L29-L179


 - [ ] ID-1053
Parameter [BandwidthProviderController.addBandwidth(IERC20,LayerCake,uint256,uint256)._bandwidthAmount](src/test/BandwidthProviderController.sol#L59) is not in mixedCase

src/test/BandwidthProviderController.sol#L59


 - [ ] ID-1054
Parameter [safeconsole.log.asm_0.writeString().pos_log_asm_0_writeString](lib/forge-std/src/safeconsole.sol#L13200) is not in mixedCase

lib/forge-std/src/safeconsole.sol#L13200


 - [ ] ID-1055
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._depositedAmount](src/core/LayerCakeBandwidthManager.sol#L115) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L115


 - [ ] ID-1056
Constant [stdStorageSafe.vm](lib/forge-std/src/StdStorage.sol#L20) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdStorage.sol#L20


 - [ ] ID-1057
Parameter [NegationOperationsController.storeSelfNegationOperations(bytes32)._invalidExecutionId](src/test/NegationOperationsController.sol#L204) is not in mixedCase

src/test/NegationOperationsController.sol#L204


 - [ ] ID-1058
Constant [StdStyle.vm](lib/forge-std/src/StdStyle.sol#L7) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdStyle.sol#L7


 - [ ] ID-1059
Parameter [BandwidthProviderController.removeBandwidth(LayerCake,uint256)._bandwidthAmount](src/test/BandwidthProviderController.sol#L67) is not in mixedCase

src/test/BandwidthProviderController.sol#L67


 - [ ] ID-1060
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._originChainId](src/core/LayerCakeTools.sol#L47) is not in mixedCase

src/core/LayerCakeTools.sol#L47


 - [ ] ID-1061
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._bandwidthProvider](src/core/LayerCake.sol#L72) is not in mixedCase

src/core/LayerCake.sol#L72


 - [ ] ID-1062
Constant [stdStorage.vm](lib/forge-std/src/StdStorage.sol#L196) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdStorage.sol#L196


 - [ ] ID-1063
Constant [ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1064
Parameter [BandwidthProviderController.executeStandardOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/test/BandwidthProviderController.sol#L29) is not in mixedCase

src/test/BandwidthProviderController.sol#L29


 - [ ] ID-1065
Function [stdStorage.with_key(StdStorage,address)](lib/forge-std/src/StdStorage.sol#L218-L220) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L218-L220


 - [ ] ID-1066
Function [stdStorage.checked_write(StdStorage,uint256)](lib/forge-std/src/StdStorage.sol#L238-L240) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L238-L240


 - [ ] ID-1067
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._assetId](src/core/LayerCakeTools.sol#L47) is not in mixedCase

src/core/LayerCakeTools.sol#L47


 - [ ] ID-1068
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._executionId](src/core/LayerCakeStorageSlot.sol#L95) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L95


 - [ ] ID-1069
Contract [stdStorageSafe](lib/forge-std/src/StdStorage.sol#L16-L193) is not in CapWords

lib/forge-std/src/StdStorage.sol#L16-L193


 - [ ] ID-1070
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._contractId](src/core/LayerCakeTools.sol#L47) is not in mixedCase

src/core/LayerCakeTools.sol#L47


 - [ ] ID-1071
Parameter [UserController.withdrawFromLayerCakeOriginDeploy(LayerCakeOriginDeploy,uint256)._layerCakeOriginDeploy](src/test/UserController.sol#L62) is not in mixedCase

src/test/UserController.sol#L62


 - [ ] ID-1072
Parameter [UserController.storeStandardOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._operations](src/test/UserController.sol#L31) is not in mixedCase

src/test/UserController.sol#L31


 - [ ] ID-1073
Parameter [LayerCakeOriginDeploy.deposit(uint256)._amount](src/core/LayerCakeOriginDeploy.sol#L35) is not in mixedCase

src/core/LayerCakeOriginDeploy.sol#L35


 - [ ] ID-1074
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._amount](src/core/LayerCakeBandwidthManager.sol#L54) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L54


 - [ ] ID-1075
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._amount](src/core/LayerCakeStorageSlot.sol#L60) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L60


 - [ ] ID-1076
Function [stdStorageSafe.with_key(StdStorage,address)](lib/forge-std/src/StdStorage.sol#L122-L125) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L122-L125


 - [ ] ID-1077
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionTime](src/core/LayerCakeStorageManager.sol#L96) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L96


 - [ ] ID-1078
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionTime](src/core/LayerCakeStorageManager.sol#L110) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L110


 - [ ] ID-1079
Parameter [LayerCakeStandardOperationsTest.testFuzzStoreStandardOperations(uint16)._amount](src/test/LayerCakeStandardOperationsTest.t.sol#L30) is not in mixedCase

src/test/LayerCakeStandardOperationsTest.t.sol#L30


 - [ ] ID-1080
Parameter [LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._negationExecutionProof](src/core/LayerCake.sol#L204) is not in mixedCase

src/core/LayerCake.sol#L204


 - [ ] ID-1081
Contract [stdMath](lib/forge-std/src/StdMath.sol#L4-L43) is not in CapWords

lib/forge-std/src/StdMath.sol#L4-L43


 - [ ] ID-1082
Parameter [UserController.depositToLayerCakeOriginDeploy(IERC20,LayerCakeOriginDeploy,uint256)._token](src/test/UserController.sol#L54) is not in mixedCase

src/test/UserController.sol#L54


 - [ ] ID-1083
Variable [LayerCakeDestinationDeploy._deposits](src/core/LayerCakeDestinationDeploy.sol#L21) is not in mixedCase

src/core/LayerCakeDestinationDeploy.sol#L21


 - [ ] ID-1084
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCakeTools.sol#L72) is not in mixedCase

src/core/LayerCakeTools.sol#L72


 - [ ] ID-1085
Parameter [LayerCakeOriginDeploy.withdraw(uint256)._amount](src/core/LayerCakeOriginDeploy.sol#L47) is not in mixedCase

src/core/LayerCakeOriginDeploy.sol#L47


 - [ ] ID-1086
Contract [stdError](lib/forge-std/src/StdError.sol#L5-L15) is not in CapWords

lib/forge-std/src/StdError.sol#L5-L15


 - [ ] ID-1087
Event [DSTest.log_named_uint(string,uint256)](lib/forge-std/lib/ds-test/src/test.sol#L34) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L34


 - [ ] ID-1088
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/LayerCake.sol#L73) is not in mixedCase

src/core/LayerCake.sol#L73


 - [ ] ID-1089
Parameter [stdStorageSafe.depth(StdStorage,uint256)._depth](lib/forge-std/src/StdStorage.sol#L137) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L137


 - [ ] ID-1090
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._executionId](src/core/LayerCakeStorageSlot.sol#L60) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L60


 - [ ] ID-1091
Event [DSTest.log_bytes(bytes)](lib/forge-std/lib/ds-test/src/test.sol#L26) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L26


 - [ ] ID-1092
Parameter [UserController.depositToLayerCakeOriginDeploy(IERC20,LayerCakeOriginDeploy,uint256)._amount](src/test/UserController.sol#L56) is not in mixedCase

src/test/UserController.sol#L56


 - [ ] ID-1093
Function [stdStorage.read_address(StdStorage)](lib/forge-std/src/StdStorage.sol#L295-L297) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L295-L297


 - [ ] ID-1094
Parameter [UserController.storeNegationOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._operations](src/test/UserController.sol#L41) is not in mixedCase

src/test/UserController.sol#L41


 - [ ] ID-1095
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._amount](src/core/LayerCakeStorageManager.sol#L129) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L129


 - [ ] ID-1096
Parameter [stdStorageSafe.target(StdStorage,address)._target](lib/forge-std/src/StdStorage.sol#L107) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L107


 - [ ] ID-1097
Parameter [LayerCake.executeCancelStandardOperations(LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCake.sol#L177) is not in mixedCase

src/core/LayerCake.sol#L177


 - [ ] ID-1098
Parameter [LayerCakeStandardOperationsTest.testFuzzStandardOperationsTransferOnly(uint16)._amount](src/test/LayerCakeStandardOperationsTest.t.sol#L34) is not in mixedCase

src/test/LayerCakeStandardOperationsTest.t.sol#L34


 - [ ] ID-1099
Contract [safeconsole](lib/forge-std/src/safeconsole.sol#L6-L13248) is not in CapWords

lib/forge-std/src/safeconsole.sol#L6-L13248


 - [ ] ID-1100
Parameter [BandwidthProviderController.addBandwidth(IERC20,LayerCake,uint256,uint256)._depositedAmount](src/test/BandwidthProviderController.sol#L59) is not in mixedCase

src/test/BandwidthProviderController.sol#L59


 - [ ] ID-1101
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._amount](src/core/LayerCakeStorageManager.sol#L110) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L110


 - [ ] ID-1102
Parameter [UserController.storeStandardOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._token](src/test/UserController.sol#L31) is not in mixedCase

src/test/UserController.sol#L31


 - [ ] ID-1103
Event [DSTest.log_string(string)](lib/forge-std/lib/ds-test/src/test.sol#L27) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L27


 - [ ] ID-1104
Parameter [LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCake.sol#L157) is not in mixedCase

src/core/LayerCake.sol#L157


 - [ ] ID-1105
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._invalidExecutionProofId](src/core/LayerCakeBandwidthManager.sol#L118) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L118


 - [ ] ID-1106
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._bandwidthProvider](src/core/LayerCakeBandwidthManager.sol#L114) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L114


 - [ ] ID-1107
Parameter [UserController.cancelStandardOperations(LayerCake,LayerCakeExecutionProof.Operations)._layercake](src/test/UserController.sol#L49) is not in mixedCase

src/test/UserController.sol#L49


 - [ ] ID-1108
Constant [StdUtils.vm](lib/forge-std/src/StdUtils.sol#L15) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/StdUtils.sol#L15


 - [ ] ID-1109
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthAmount](src/core/LayerCakeBandwidthManager.sol#L78) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L78


 - [ ] ID-1110
Event [StdAssertions.log_array(int256[])](lib/forge-std/src/StdAssertions.sol#L9) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L9


 - [ ] ID-1111
Function [stdStorageSafe.with_key(StdStorage,uint256)](lib/forge-std/src/StdStorage.sol#L127-L130) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L127-L130


 - [ ] ID-1112
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionId](src/core/LayerCakeStorageManager.sol#L129) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L129


 - [ ] ID-1113
Parameter [BandwidthProviderController.removeBandwidth(LayerCake,uint256)._layercake](src/test/BandwidthProviderController.sol#L67) is not in mixedCase

src/test/BandwidthProviderController.sol#L67


 - [ ] ID-1114
Event [StdAssertions.log_named_array(string,int256[])](lib/forge-std/src/StdAssertions.sol#L12) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L12


 - [ ] ID-1115
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/LayerCakeStorageSlot.sol#L66) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L66


 - [ ] ID-1116
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCakeStorageSlot.sol#L66) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L66


 - [ ] ID-1117
Parameter [NegationOperationsController.executeValidNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.Operations,uint256)._partialDenominator](src/test/NegationOperationsController.sol#L249) is not in mixedCase

src/test/NegationOperationsController.sol#L249


 - [ ] ID-1118
Parameter [stdStorageSafe.sig(StdStorage,string)._sig](lib/forge-std/src/StdStorage.sol#L117) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L117


 - [ ] ID-1119
Parameter [LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)._amount](src/core/LayerCakeBandwidthManager.sol#L145) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L145


 - [ ] ID-1120
Parameter [UserController.withdrawFromLayerCakeDestinationDeploy(LayerCakeDestinationDeploy)._layerCakeDestinationDeploy](src/test/UserController.sol#L69) is not in mixedCase

src/test/UserController.sol#L69


 - [ ] ID-1121
Parameter [StandardOperationsController.standardOperationsTransferOnly(uint256)._nonce](src/test/StandardOperationsController.sol#L101) is not in mixedCase

src/test/StandardOperationsController.sol#L101


 - [ ] ID-1122
Parameter [StandardOperationsController.fuzzStandardOperationsTransferOnly(uint256)._amount](src/test/StandardOperationsController.sol#L54) is not in mixedCase

src/test/StandardOperationsController.sol#L54


 - [ ] ID-1123
Parameter [LayerCakeStorageSlot.getExecutionIdPrepared(bytes32)._executionId](src/core/LayerCakeStorageSlot.sol#L52) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L52


 - [ ] ID-1124
Parameter [StandardOperationsController.fuzzStoreStandardOperations(uint16)._amount](src/test/StandardOperationsController.sol#L28) is not in mixedCase

src/test/StandardOperationsController.sol#L28


 - [ ] ID-1125
Parameter [BandwidthProviderController.updateController(address)._controller](src/test/BandwidthProviderController.sol#L25) is not in mixedCase

src/test/BandwidthProviderController.sol#L25


 - [ ] ID-1126
Function [stdStorageSafe.read_bool(StdStorage)](lib/forge-std/src/StdStorage.sol#L152-L157) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L152-L157


 - [ ] ID-1127
Event [DSTest.log(string)](lib/forge-std/lib/ds-test/src/test.sol#L19) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L19


 - [ ] ID-1128
Event [DSTest.log_bytes32(bytes32)](lib/forge-std/lib/ds-test/src/test.sol#L23) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L23


 - [ ] ID-1129
Function [stdStorage.checked_write_int(StdStorage,int256)](lib/forge-std/src/StdStorage.sol#L242-L244) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L242-L244


 - [ ] ID-1130
Parameter [StandardOperationsController.standardOperationsTransferWithCalldata(uint256)._nonce](src/test/StandardOperationsController.sol#L135) is not in mixedCase

src/test/StandardOperationsController.sol#L135


 - [ ] ID-1131
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._executionTime](src/core/LayerCake.sol#L146) is not in mixedCase

src/core/LayerCake.sol#L146


 - [ ] ID-1132
Parameter [UserController.withdrawFromLayerCakeOriginDeploy(LayerCakeOriginDeploy,uint256)._amount](src/test/UserController.sol#L62) is not in mixedCase

src/test/UserController.sol#L62


 - [ ] ID-1133
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthProvider](src/core/LayerCakeBandwidthManager.sol#L78) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L78


 - [ ] ID-1134
Function [stdStorageSafe.with_key(StdStorage,bytes32)](lib/forge-std/src/StdStorage.sol#L132-L135) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L132-L135


 - [ ] ID-1135
Event [DSTest.log_named_address(string,address)](lib/forge-std/lib/ds-test/src/test.sol#L29) is not in CapWords

lib/forge-std/lib/ds-test/src/test.sol#L29


 - [ ] ID-1136
Parameter [NegationOperationsController.storeReverseNegationOperations(bytes32)._validExecutionId](src/test/NegationOperationsController.sol#L165) is not in mixedCase

src/test/NegationOperationsController.sol#L165


 - [ ] ID-1137
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionId](src/core/LayerCakeStorageManager.sol#L86) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L86


 - [ ] ID-1138
Parameter [LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)._operations](src/core/LayerCake.sol#L101) is not in mixedCase

src/core/LayerCake.sol#L101


 - [ ] ID-1139
Parameter [LayerCakeTools.getInvalidExecutionProofId(LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/core/LayerCakeTools.sol#L64) is not in mixedCase

src/core/LayerCakeTools.sol#L64


 - [ ] ID-1140
Constant [CommonBase.vm](lib/forge-std/src/Base.sol#L27) is not in UPPER_CASE_WITH_UNDERSCORES

lib/forge-std/src/Base.sol#L27


 - [ ] ID-1141
Modifier [DSTest.logs_gas()](lib/forge-std/lib/ds-test/src/test.sol#L86-L91) is not in mixedCase

lib/forge-std/lib/ds-test/src/test.sol#L86-L91


 - [ ] ID-1142
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._bandwidthProvider](src/core/LayerCakeBandwidthManager.sol#L54) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L54


 - [ ] ID-1143
Parameter [BandwidthProviderController.executeNegationOperations(LayerCake,LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._layercake](src/test/BandwidthProviderController.sol#L52) is not in mixedCase

src/test/BandwidthProviderController.sol#L52


 - [ ] ID-1144
Parameter [StandardOperationsController.standardOperationsTransferOnlyPartial(uint256,uint256)._nonce](src/test/StandardOperationsController.sol#L179) is not in mixedCase

src/test/StandardOperationsController.sol#L179


 - [ ] ID-1145
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._verificationHash](src/core/LayerCakeDeployTools.sol#L16) is not in mixedCase

src/core/LayerCakeDeployTools.sol#L16


 - [ ] ID-1146
Variable [DSTest.IS_TEST](lib/forge-std/lib/ds-test/src/test.sol#L38) is not in mixedCase

lib/forge-std/lib/ds-test/src/test.sol#L38


 - [ ] ID-1147
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthProvider](src/core/LayerCakeBandwidthManager.sol#L98) is not in mixedCase

src/core/LayerCakeBandwidthManager.sol#L98


 - [ ] ID-1148
Function [StdUtils.console2_log(string,uint256)](lib/forge-std/src/StdUtils.sol#L189-L192) is not in mixedCase

lib/forge-std/src/StdUtils.sol#L189-L192


 - [ ] ID-1149
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCake.sol#L74) is not in mixedCase

src/core/LayerCake.sol#L74


 - [ ] ID-1150
Parameter [Counter.incrementCounter(uint256)._increment](src/test/Counter.sol#L10) is not in mixedCase

src/test/Counter.sol#L10


 - [ ] ID-1151
Function [stdStorage.with_key(StdStorage,uint256)](lib/forge-std/src/StdStorage.sol#L222-L224) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L222-L224


 - [ ] ID-1152
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._pathwayId](src/core/LayerCakeTools.sol#L56) is not in mixedCase

src/core/LayerCakeTools.sol#L56


 - [ ] ID-1153
Parameter [LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/core/LayerCake.sol#L205) is not in mixedCase

src/core/LayerCake.sol#L205


 - [ ] ID-1154
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionTime](src/core/LayerCakeStorageManager.sol#L129) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L129


 - [ ] ID-1155
Function [stdStorage.read_bytes32(StdStorage)](lib/forge-std/src/StdStorage.sol#L287-L289) is not in mixedCase

lib/forge-std/src/StdStorage.sol#L287-L289


 - [ ] ID-1156
Event [StdAssertions.log_named_array(string,address[])](lib/forge-std/src/StdAssertions.sol#L13) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L13


 - [ ] ID-1157
Event [StdAssertions.log_named_array(string,uint256[])](lib/forge-std/src/StdAssertions.sol#L11) is not in CapWords

lib/forge-std/src/StdAssertions.sol#L11


 - [ ] ID-1158
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._amount](src/core/LayerCakeStorageSlot.sol#L95) is not in mixedCase

src/core/LayerCakeStorageSlot.sol#L95


 - [ ] ID-1159
Parameter [UserController.storeStandardOperations(IERC20,LayerCake,LayerCakeExecutionProof.Operations)._layercake](src/test/UserController.sol#L31) is not in mixedCase

src/test/UserController.sol#L31


 - [ ] ID-1160
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/LayerCakeCalldataInterface.sol#L10) is not in mixedCase

src/core/LayerCakeCalldataInterface.sol#L10


 - [ ] ID-1161
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/LayerCakeStorageManager.sol#L119) is not in mixedCase

src/core/LayerCakeStorageManager.sol#L119


## redundant-statements
Impact: Informational
Confidence: High
 - [ ] ID-1162
Redundant expression "[status](lib/forge-std/src/StdUtils.sol#L191)" in[StdUtils](lib/forge-std/src/StdUtils.sol#L9-L198)

lib/forge-std/src/StdUtils.sol#L191


 - [ ] ID-1163
Redundant expression "[status](lib/forge-std/lib/ds-test/src/test.sol#L73)" in[DSTest](lib/forge-std/lib/ds-test/src/test.sol#L18-L592)

lib/forge-std/lib/ds-test/src/test.sol#L73


 - [ ] ID-1164
Redundant expression "[status](lib/forge-std/src/StdUtils.sol#L196)" in[StdUtils](lib/forge-std/src/StdUtils.sol#L9-L198)

lib/forge-std/src/StdUtils.sol#L196


## similar-names
Impact: Informational
Confidence: Medium
 - [ ] ID-1165
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic1](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic3](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1166
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L258


 - [ ] ID-1167
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic2](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic3](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1168
Variable [VerifiedSetupController.constructor()._pk_scope_4](src/test/VerifiedSetupController.sol#L205) is too similar to [VerifiedSetupController.constructor()._pk_scope_5](src/test/VerifiedSetupController.sol#L214)

src/test/VerifiedSetupController.sol#L205


 - [ ] ID-1169
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1170
Variable [StdInvariant._excludedSenders](lib/forge-std/src/StdInvariant.sol#L13) is too similar to [StdInvariant.excludeSenders().excludedSenders_](lib/forge-std/src/StdInvariant.sol#L69)

lib/forge-std/src/StdInvariant.sol#L13


 - [ ] ID-1171
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic1](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic2](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L416


 - [ ] ID-1172
Variable [VerifiedSetupController.constructor()._pk_scope_2](src/test/VerifiedSetupController.sol#L194) is too similar to [VerifiedSetupController.constructor()._pk_scope_4](src/test/VerifiedSetupController.sol#L205)

src/test/VerifiedSetupController.sol#L194


 - [ ] ID-1173
Variable [StdInvariant._targetedContracts](lib/forge-std/src/StdInvariant.sol#L14) is too similar to [StdInvariant.targetContracts().targetedContracts_](lib/forge-std/src/StdInvariant.sol#L81)

lib/forge-std/src/StdInvariant.sol#L14


 - [ ] ID-1174
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1175
Variable [StdInvariant._targetedArtifacts](lib/forge-std/src/StdInvariant.sol#L18) is too similar to [StdInvariant.targetArtifacts().targetedArtifacts_](lib/forge-std/src/StdInvariant.sol#L73)

lib/forge-std/src/StdInvariant.sol#L18


 - [ ] ID-1176
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1177
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1178
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1179
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1180
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L269


 - [ ] ID-1181
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1182
Variable [StdInvariant._targetedSenders](lib/forge-std/src/StdInvariant.sol#L15) is too similar to [StdInvariant.targetSenders().targetedSenders_](lib/forge-std/src/StdInvariant.sol#L89)

lib/forge-std/src/StdInvariant.sol#L15


 - [ ] ID-1183
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L269


 - [ ] ID-1184
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L258


 - [ ] ID-1185
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1186
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1187
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic1](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic3](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L416


 - [ ] ID-1188
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic2](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic3](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1189
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L259


 - [ ] ID-1190
Variable [VerifiedSetupController.constructor()._pk_scope_0](src/test/VerifiedSetupController.sol#L135) is too similar to [VerifiedSetupController.constructor()._pk_scope_5](src/test/VerifiedSetupController.sol#L214)

src/test/VerifiedSetupController.sol#L135


 - [ ] ID-1191
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1192
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1193
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1194
Variable [VerifiedSetupController.constructor().originUser_scope_1](src/test/VerifiedSetupController.sol#L137) is too similar to [VerifiedSetupController.constructor().originUser_scope_3](src/test/VerifiedSetupController.sol#L195)

src/test/VerifiedSetupController.sol#L137


 - [ ] ID-1195
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1196
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L258) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L258


 - [ ] ID-1197
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L270


 - [ ] ID-1198
Variable [StdAssertions.assertEqCall(address,bytes,address,bytes,bool).returnDataA](lib/forge-std/src/StdAssertions.sol#L351) is too similar to [StdAssertions.assertEqCall(address,bytes,address,bytes,bool).returnDataB](lib/forge-std/src/StdAssertions.sol#L352)

lib/forge-std/src/StdAssertions.sol#L351


 - [ ] ID-1199
Variable [VerifiedSetupController.constructor()._pk_scope_0](src/test/VerifiedSetupController.sol#L135) is too similar to [VerifiedSetupController.constructor()._pk_scope_4](src/test/VerifiedSetupController.sol#L205)

src/test/VerifiedSetupController.sol#L135


 - [ ] ID-1200
Variable [StdInvariant._excludedContracts](lib/forge-std/src/StdInvariant.sol#L12) is too similar to [StdInvariant.excludeContracts().excludedContracts_](lib/forge-std/src/StdInvariant.sol#L65)

lib/forge-std/src/StdInvariant.sol#L12


 - [ ] ID-1201
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic1](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic3](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1202
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L269


 - [ ] ID-1203
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L270)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1204
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1205
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1206
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic1](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic2](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1207
Variable [VerifiedSetupController.constructor()._pk_scope_2](src/test/VerifiedSetupController.sol#L194) is too similar to [VerifiedSetupController.constructor()._pk_scope_5](src/test/VerifiedSetupController.sol#L214)

src/test/VerifiedSetupController.sol#L194


 - [ ] ID-1208
Variable [VerifiedSetupController.constructor()._pk_scope_0](src/test/VerifiedSetupController.sol#L135) is too similar to [VerifiedSetupController.constructor()._pk_scope_2](src/test/VerifiedSetupController.sol#L194)

src/test/VerifiedSetupController.sol#L135


 - [ ] ID-1209
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic1](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic2](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L416


 - [ ] ID-1210
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic1](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic3](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L416


 - [ ] ID-1211
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType3](lib/forge-std/src/StdCheats.sol#L259)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1212
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic2](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic3](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L416


 - [ ] ID-1213
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L269)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1214
Variable [StdInvariant._targetedArtifactSelectors](lib/forge-std/src/StdInvariant.sol#L20) is too similar to [StdInvariant.targetArtifactSelectors().targetedArtifactSelectors_](lib/forge-std/src/StdInvariant.sol#L77)

lib/forge-std/src/StdInvariant.sol#L20


 - [ ] ID-1215
Variable [StdInvariant._excludedArtifacts](lib/forge-std/src/StdInvariant.sol#L17) is too similar to [StdInvariant.excludeArtifacts().excludedArtifacts_](lib/forge-std/src/StdInvariant.sol#L61)

lib/forge-std/src/StdInvariant.sol#L17


 - [ ] ID-1216
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L257) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType2](lib/forge-std/src/StdCheats.sol#L250)

lib/forge-std/src/StdCheats.sol#L257


 - [ ] ID-1217
Variable [Vm.expectEmit(bool,bool,bool,bool).checkTopic1](lib/forge-std/src/Vm.sol#L415) is too similar to [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic2](lib/forge-std/src/Vm.sol#L416)

lib/forge-std/src/Vm.sol#L415


 - [ ] ID-1218
Variable [StdInvariant._targetedSelectors](lib/forge-std/src/StdInvariant.sol#L21) is too similar to [StdInvariant.targetSelectors().targetedSelectors_](lib/forge-std/src/StdInvariant.sol#L85)

lib/forge-std/src/StdInvariant.sol#L21


 - [ ] ID-1219
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L250) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L250


 - [ ] ID-1220
Variable [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType1](lib/forge-std/src/StdCheats.sol#L268) is too similar to [StdCheatsSafe.assumeAddressIsNot(address,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType,StdCheatsSafe.AddressType).addressType4](lib/forge-std/src/StdCheats.sol#L271)

lib/forge-std/src/StdCheats.sol#L268


 - [ ] ID-1221
Variable [Vm.expectEmit(bool,bool,bool,bool,address).checkTopic2](lib/forge-std/src/Vm.sol#L416) is too similar to [Vm.expectEmit(bool,bool,bool,bool).checkTopic3](lib/forge-std/src/Vm.sol#L415)

lib/forge-std/src/Vm.sol#L416


## too-many-digits
Impact: Informational
Confidence: Medium
 - [ ] ID-1222
[StandardOperationsController.standardOperationsTransferWithCalldata(uint256)](src/test/StandardOperationsController.sol#L135-L177) uses literals with too many digits:
	- [standardOperations = Operations(_nonce,10000,10,originUser1,address(counterTester),block.timestamp,100000,0x6abbb3b4000000000000000000000000000000000000000000000000000000000000000f,false,0,address(0),false,)](src/test/StandardOperationsController.sol#L144-L158)

src/test/StandardOperationsController.sol#L135-L177


 - [ ] ID-1223
[LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58) uses literals with too many digits:
	- [removedBandwidthAmount = 100000](src/test/LayerCakeBandwidthChangesTest.t.sol#L55)

src/test/LayerCakeBandwidthChangesTest.t.sol#L46-L58


 - [ ] ID-1224
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) uses literals with too many digits:
	- [assertEq(origincurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L58)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-1225
[LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth3()](src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100) uses literals with too many digits:
	- [removedBandwidthAmount = 100000](src/test/LayerCakeBandwidthChangesTest.t.sol#L88)

src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100


 - [ ] ID-1226
[VerifiedSetupController.slitherConstructorVariables()](src/test/VerifiedSetupController.sol#L27-L224) uses literals with too many digits:
	- [depositAmount = 1000000](src/test/VerifiedSetupController.sol#L76)

src/test/VerifiedSetupController.sol#L27-L224


 - [ ] ID-1227
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) uses literals with too many digits:
	- [BandwidthProviderController(destinationBp).addBandwidth(destinationToken,destinationLayercake,110000,100000)](src/test/VerifiedSetupController.sol#L217-L219)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-1228
[LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth()](src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44) uses literals with too many digits:
	- [removedBandwidthAmount = 100000](src/test/LayerCakeBandwidthChangesTest.t.sol#L41)

src/test/LayerCakeBandwidthChangesTest.t.sol#L31-L44


 - [ ] ID-1229
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) uses literals with too many digits:
	- [originDepositedAmount = 86000000](src/test/LayerCakeVerifiedSetupTest.t.sol#L80)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-1230
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) uses literals with too many digits:
	- [destinationDepositedAmount = c.depositCap() - 64000000](src/test/LayerCakeVerifiedSetupTest.t.sol#L88)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


 - [ ] ID-1231
[LayerCakeNegationOperationsTest.testFailSelfNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121) uses literals with too many digits:
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),100000)](src/test/LayerCakeNegationOperationsTest.t.sol#L120)

src/test/LayerCakeNegationOperationsTest.t.sol#L96-L121


 - [ ] ID-1232
[safeconsole.slitherConstructorConstantVariables()](lib/forge-std/src/safeconsole.sol#L6-L13248) uses literals with too many digits:
	- [CONSOLE_ADDR = 0x000000000000000000000000000000000000000000636F6e736F6c652e6c6f67](lib/forge-std/src/safeconsole.sol#L7)

lib/forge-std/src/safeconsole.sol#L6-L13248


 - [ ] ID-1233
[NegationOperationsController.createInvalidExecutionRemoveAllBandwidth()](src/test/NegationOperationsController.sol#L95-L118) uses literals with too many digits:
	- [standardOperations = Operations(1,100000,0,destinationBp1,destinationBp1,block.timestamp,0,,false,0,address(0),false,)](src/test/NegationOperationsController.sol#L102-L104)

src/test/NegationOperationsController.sol#L95-L118


 - [ ] ID-1234
[NegationOperationsController.createInvalidExecution()](src/test/NegationOperationsController.sol#L28-L52) uses literals with too many digits:
	- [assertEq(c.destinationToken().balanceOf(destinationBp1),900000)](src/test/NegationOperationsController.sol#L48)

src/test/NegationOperationsController.sol#L28-L52


 - [ ] ID-1235
[LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135) uses literals with too many digits:
	- [BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(),100000)](src/test/LayerCakeNegationOperationsTest.t.sol#L133)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-1236
[VerifiedSetupController.constructor()](src/test/VerifiedSetupController.sol#L82-L223) uses literals with too many digits:
	- [BandwidthProviderController(originBp).addBandwidth(originToken,originLayercake,110000,100000)](src/test/VerifiedSetupController.sol#L209)

src/test/VerifiedSetupController.sol#L82-L223


 - [ ] ID-1237
[LayerCakeBandwidthChangesTest.testFailStandardOperationsTransferOnlyRemovingBandwidth2()](src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76) uses literals with too many digits:
	- [removedBandwidthAmount = 100000](src/test/LayerCakeBandwidthChangesTest.t.sol#L70)

src/test/LayerCakeBandwidthChangesTest.t.sol#L60-L76


 - [ ] ID-1238
[LayerCakeNegationOperationsTest.testNoNegationRemoveBandwidth()](src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135) uses literals with too many digits:
	- [assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1),1000000)](src/test/LayerCakeNegationOperationsTest.t.sol#L134)

src/test/LayerCakeNegationOperationsTest.t.sol#L123-L135


 - [ ] ID-1239
[NegationOperationsController.storeReverseNegationOperations(bytes32)](src/test/NegationOperationsController.sol#L165-L202) uses literals with too many digits:
	- [reverseNegationCost = 100000](src/test/NegationOperationsController.sol#L169)

src/test/NegationOperationsController.sol#L165-L202


 - [ ] ID-1240
[TestTokenDeploy.run()](script/test/TestTokenDeploy.s.sol#L20-L47) uses literals with too many digits:
	- [amount = 1000000000000000000000000000](script/test/TestTokenDeploy.s.sol#L35)

script/test/TestTokenDeploy.s.sol#L20-L47


 - [ ] ID-1241
[LayerCakeBandwidthChangesTest.testStandardOperationsTransferOnlyRemovingBandwidth3()](src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100) uses literals with too many digits:
	- [BandwidthProviderController(destinationBp1).addBandwidth(c.destinationToken(),c.destinationLayercake(),110000,100000)](src/test/LayerCakeBandwidthChangesTest.t.sol#L93-L95)

src/test/LayerCakeBandwidthChangesTest.t.sol#L78-L100


 - [ ] ID-1242
[LayerCakeVerifiedSetupTest.testConstruction()](src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94) uses literals with too many digits:
	- [assertEq(destinationcurrentTotalBandwidth,100000)](src/test/LayerCakeVerifiedSetupTest.t.sol#L62)

src/test/LayerCakeVerifiedSetupTest.t.sol#L34-L94


## unused-state
Impact: Informational
Confidence: High
 - [ ] ID-1243
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1244
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1245
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1246
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1247
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1248
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1249
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1250
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1251
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1252
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1253
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1254
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1255
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1256
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1257
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1258
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1259
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1260
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1261
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1262
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1263
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1264
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1265
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1266
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1267
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1268
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1269
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1270
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1271
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1272
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1273
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1274
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1275
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1276
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1277
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1278
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1279
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1280
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1281
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1282
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1283
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1284
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1285
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1286
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1287
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1288
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1289
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1290
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1291
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1292
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1293
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1294
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1295
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1296
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1297
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1298
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1299
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1300
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1301
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1302
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1303
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1304
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1305
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1306
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1307
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1308
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1309
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1310
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1311
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1312
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1313
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1314
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1315
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1316
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1317
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1318
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1319
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1320
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1321
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1322
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1323
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1324
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1325
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1326
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1327
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1328
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1329
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1330
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1331
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1332
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1333
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1334
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1335
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1336
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1337
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1338
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1339
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1340
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1341
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1342
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1343
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1344
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1345
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1346
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1347
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1348
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1349
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1350
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1351
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1352
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1353
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1354
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1355
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1356
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1357
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1358
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1359
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1360
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1361
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1362
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1363
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1364
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1365
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1366
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1367
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1368
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1369
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1370
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1371
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1372
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1373
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1374
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1375
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1376
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1377
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [LayerCakeNegationOperationsTest](src/test/LayerCakeNegationOperationsTest.t.sol#L19-L136)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1378
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1379
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1380
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1381
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1382
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1383
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [TestTransfer](script/test/TestTransfer.s.sol#L11-L35)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1384
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1385
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1386
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TransportedTokenDeploy](script/src/TransportedTokenDeploy.s.sol#L14-L53)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1387
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1388
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1389
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1390
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [VerifiedSetupController](src/test/VerifiedSetupController.sol#L27-L224)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1391
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [StandardOperationsController](src/test/StandardOperationsController.sol#L21-L259)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1392
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [DestinationLayerCake](script/src/DestinationLayerCake.s.sol#L16-L72)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1393
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1394
[CommonBase.DEFAULT_TEST_CONTRACT](lib/forge-std/src/Base.sol#L17) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L17


 - [ ] ID-1395
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1396
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestDeposit](script/test/TestDeposit.s.sol#L16-L48)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1397
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TestTokenDeploy](script/test/TestTokenDeploy.s.sol#L14-L48)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1398
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1399
[CommonBase.SECP256K1_ORDER](lib/forge-std/src/Base.sol#L21-L22) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L21-L22


 - [ ] ID-1400
[CommonBase.stdstore](lib/forge-std/src/Base.sol#L28) is never used in [DestinationDeploy](script/src/DestinationDeploy.s.sol#L18-L93)

lib/forge-std/src/Base.sol#L28


 - [ ] ID-1401
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [TestDestinationAddBandwidth](script/test/TestDestinationAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1402
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1403
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1404
[ScriptBase.vmSafe](lib/forge-std/src/Base.sol#L34) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L34


 - [ ] ID-1405
[CommonBase.CONSOLE](lib/forge-std/src/Base.sol#L11) is never used in [LayerCakeBandwidthChangesTest](src/test/LayerCakeBandwidthChangesTest.t.sol#L20-L101)

lib/forge-std/src/Base.sol#L11


 - [ ] ID-1406
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestSetBalanceChanges](script/test/TestSetBalanceChanges.s.sol#L14-L49)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1407
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [LayerCakeVerifiedSetupTest](src/test/LayerCakeVerifiedSetupTest.t.sol#L23-L112)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1408
[CommonBase.MULTICALL3_ADDRESS](lib/forge-std/src/Base.sol#L19) is never used in [TestWithdraw](script/test/TestWithdraw.s.sol#L14-L58)

lib/forge-std/src/Base.sol#L19


 - [ ] ID-1409
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [LayerCakeStandardOperationsTest](src/test/LayerCakeStandardOperationsTest.t.sol#L19-L93)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1410
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1411
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [NegationOperationsController](src/test/NegationOperationsController.sol#L21-L264)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1412
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [TransferDeposits](script/src/TransferDeposits.s.sol#L15-L46)

lib/forge-std/src/Base.sol#L24-L25


 - [ ] ID-1413
[CommonBase.CREATE2_FACTORY](lib/forge-std/src/Base.sol#L13) is never used in [TestOriginAddBandwidth](script/test/TestOriginAddBandwidth.s.sol#L13-L36)

lib/forge-std/src/Base.sol#L13


 - [ ] ID-1414
[CommonBase.DEFAULT_SENDER](lib/forge-std/src/Base.sol#L15) is never used in [OriginLayerCake](script/src/OriginLayerCake.s.sol#L15-L66)

lib/forge-std/src/Base.sol#L15


 - [ ] ID-1415
[CommonBase.UINT256_MAX](lib/forge-std/src/Base.sol#L24-L25) is never used in [OriginDeploy](script/src/OriginDeploy.s.sol#L17-L54)

lib/forge-std/src/Base.sol#L24-L25


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1416
[VerifiedSetupController.assetId](src/test/VerifiedSetupController.sol#L42) should be constant 

src/test/VerifiedSetupController.sol#L42


 - [ ] ID-1417
[DestinationDeploy.originTokenName](script/src/DestinationDeploy.s.sol#L41) should be constant 

script/src/DestinationDeploy.s.sol#L41


 - [ ] ID-1418
[DestinationDeploy.depositWindow](script/src/DestinationDeploy.s.sol#L45) should be constant 

script/src/DestinationDeploy.s.sol#L45


 - [ ] ID-1419
[VerifiedSetupController.destinationForwardedFeeRecipient](src/test/VerifiedSetupController.sol#L62) should be constant 

src/test/VerifiedSetupController.sol#L62


 - [ ] ID-1420
[VerifiedSetupController.originUserPk1](src/test/VerifiedSetupController.sol#L77) should be constant 

src/test/VerifiedSetupController.sol#L77


 - [ ] ID-1421
[DSTest.IS_TEST](lib/forge-std/lib/ds-test/src/test.sol#L38) should be constant 

lib/forge-std/lib/ds-test/src/test.sol#L38


 - [ ] ID-1422
[DestinationDeploy.defaultNegationCost](script/src/DestinationDeploy.s.sol#L33) should be constant 

script/src/DestinationDeploy.s.sol#L33


 - [ ] ID-1423
[OriginDeploy.originToken](script/src/OriginDeploy.s.sol#L18) should be constant 

script/src/OriginDeploy.s.sol#L18


 - [ ] ID-1424
[VerifiedSetupController.destinationIsDestinationChain](src/test/VerifiedSetupController.sol#L58) should be constant 

src/test/VerifiedSetupController.sol#L58


 - [ ] ID-1425
[DestinationDeploy.originChainId](script/src/DestinationDeploy.s.sol#L37) should be constant 

script/src/DestinationDeploy.s.sol#L37


 - [ ] ID-1426
[VerifiedSetupController.bandwidthDepositDenominator](src/test/VerifiedSetupController.sol#L45) should be constant 

src/test/VerifiedSetupController.sol#L45


 - [ ] ID-1427
[LayerCakeTransportedToken.tokenPrefix](src/core/flattened/LayerCakeTransportedToken.f.sol#L490) should be constant 

src/core/flattened/LayerCakeTransportedToken.f.sol#L490


 - [ ] ID-1428
[VerifiedSetupController.originIsDestinationChain](src/test/VerifiedSetupController.sol#L51) should be constant 

src/test/VerifiedSetupController.sol#L51


 - [ ] ID-1429
[VerifiedSetupController.destinationThisChainId](src/test/VerifiedSetupController.sol#L59) should be constant 

src/test/VerifiedSetupController.sol#L59


 - [ ] ID-1430
[VerifiedSetupController.numAccounts](src/test/VerifiedSetupController.sol#L78) should be constant 

src/test/VerifiedSetupController.sol#L78


 - [ ] ID-1431
[DestinationDeploy.bandwidthDepositDenominator](script/src/DestinationDeploy.s.sol#L32) should be constant 

script/src/DestinationDeploy.s.sol#L32


 - [ ] ID-1432
[VerifiedSetupController.prefix](src/test/VerifiedSetupController.sol#L39) should be constant 

src/test/VerifiedSetupController.sol#L39


 - [ ] ID-1433
[VerifiedSetupController.originOppositeChainId](src/test/VerifiedSetupController.sol#L53) should be constant 

src/test/VerifiedSetupController.sol#L53


 - [ ] ID-1434
[DestinationDeploy.assetId](script/src/DestinationDeploy.s.sol#L29) should be constant 

script/src/DestinationDeploy.s.sol#L29


 - [ ] ID-1435
[VerifiedSetupController.depositWindow](src/test/VerifiedSetupController.sol#L69) should be constant 

src/test/VerifiedSetupController.sol#L69


 - [ ] ID-1436
[VerifiedSetupController.destinationOppositeChainId](src/test/VerifiedSetupController.sol#L60) should be constant 

src/test/VerifiedSetupController.sol#L60


 - [ ] ID-1437
[DestinationDeploy.depositCap](script/src/DestinationDeploy.s.sol#L34) should be constant 

script/src/DestinationDeploy.s.sol#L34


 - [ ] ID-1438
[DestinationDeploy.destinationChainId](script/src/DestinationDeploy.s.sol#L38) should be constant 

script/src/DestinationDeploy.s.sol#L38


 - [ ] ID-1439
[VerifiedSetupController.forwardedFeeDenominator](src/test/VerifiedSetupController.sol#L48) should be constant 

src/test/VerifiedSetupController.sol#L48


 - [ ] ID-1440
[VerifiedSetupController.contractId](src/test/VerifiedSetupController.sol#L43) should be constant 

src/test/VerifiedSetupController.sol#L43


 - [ ] ID-1441
[VerifiedSetupController.originForwardedFeeRecipient](src/test/VerifiedSetupController.sol#L55) should be constant 

src/test/VerifiedSetupController.sol#L55


 - [ ] ID-1442
[DestinationDeploy.originTokenSymbol](script/src/DestinationDeploy.s.sol#L42) should be constant 

script/src/DestinationDeploy.s.sol#L42


 - [ ] ID-1443
[DestinationDeploy.contractId](script/src/DestinationDeploy.s.sol#L30) should be constant 

script/src/DestinationDeploy.s.sol#L30


 - [ ] ID-1444
[VerifiedSetupController.reorgAssumption](src/test/VerifiedSetupController.sol#L44) should be constant 

src/test/VerifiedSetupController.sol#L44


 - [ ] ID-1445
[VerifiedSetupController.depositCap](src/test/VerifiedSetupController.sol#L47) should be constant 

src/test/VerifiedSetupController.sol#L47


 - [ ] ID-1446
[VerifiedSetupController.defaultNegationCost](src/test/VerifiedSetupController.sol#L46) should be constant 

src/test/VerifiedSetupController.sol#L46


 - [ ] ID-1447
[VerifiedSetupController.originThisChainId](src/test/VerifiedSetupController.sol#L52) should be constant 

src/test/VerifiedSetupController.sol#L52


 - [ ] ID-1448
[Script.IS_SCRIPT](lib/forge-std/src/Script.sol#L26) should be constant 

lib/forge-std/src/Script.sol#L26


 - [ ] ID-1449
[VerifiedSetupController.depositAmount](src/test/VerifiedSetupController.sol#L76) should be constant 

src/test/VerifiedSetupController.sol#L76


 - [ ] ID-1450
[DestinationDeploy.reorgAssumption](script/src/DestinationDeploy.s.sol#L31) should be constant 

script/src/DestinationDeploy.s.sol#L31


 - [ ] ID-1451
[VerifiedSetupController.initialTimestamp](src/test/VerifiedSetupController.sol#L35) should be constant 

src/test/VerifiedSetupController.sol#L35


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1452
[LayerCakeOriginDeploy.originToken](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1152) should be immutable 

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1152


 - [ ] ID-1453
[VerifiedSetupController.destinationToken](src/test/VerifiedSetupController.sol#L29) should be immutable 

src/test/VerifiedSetupController.sol#L29


 - [ ] ID-1454
[VerifiedSetupController.originDeploy](src/test/VerifiedSetupController.sol#L72) should be immutable 

src/test/VerifiedSetupController.sol#L72


 - [ ] ID-1455
[NegationOperationsController.c](src/test/NegationOperationsController.sol#L22) should be immutable 

src/test/NegationOperationsController.sol#L22


 - [ ] ID-1456
[LayerCakeDestinationDeploy.destinationToken](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1577) should be immutable 

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1577


 - [ ] ID-1457
[VerifiedSetupController.originLayercake](src/test/VerifiedSetupController.sol#L31) should be immutable 

src/test/VerifiedSetupController.sol#L31


 - [ ] ID-1458
[VerifiedSetupController.destinationDeploy](src/test/VerifiedSetupController.sol#L73) should be immutable 

src/test/VerifiedSetupController.sol#L73


 - [ ] ID-1459
[VerifiedSetupController.originTokenAddress](src/test/VerifiedSetupController.sol#L54) should be immutable 

src/test/VerifiedSetupController.sol#L54


 - [ ] ID-1460
[VerifiedSetupController.destinationTokenAddress](src/test/VerifiedSetupController.sol#L61) should be immutable 

src/test/VerifiedSetupController.sol#L61


 - [ ] ID-1461
[VerifiedSetupController.originToken](src/test/VerifiedSetupController.sol#L28) should be immutable 

src/test/VerifiedSetupController.sol#L28


 - [ ] ID-1462
[StandardOperationsController.c](src/test/StandardOperationsController.sol#L22) should be immutable 

src/test/StandardOperationsController.sol#L22


 - [ ] ID-1463
[VerifiedSetupController.destinationLayercake](src/test/VerifiedSetupController.sol#L32) should be immutable 

src/test/VerifiedSetupController.sol#L32


 - [ ] ID-1464
[VerifiedSetupController.deployTimestamp](src/test/VerifiedSetupController.sol#L36) should be immutable 

src/test/VerifiedSetupController.sol#L36

