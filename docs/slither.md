Summary
 - [incorrect-equality](#incorrect-equality) (5 results) (Medium)
 - [timestamp](#timestamp) (16 results) (Low)
 - [solc-version](#solc-version) (22 results) (Informational)
 - [unused-return](#unused-return) (12 results) (Medium)
 - [assembly](#assembly) (16 results) (Informational)
 - [dead-code](#dead-code) (110 results) (Informational)
 - [low-level-calls](#low-level-calls) (2 results) (Informational)
 - [weak-prng](#weak-prng) (2 results) (High)
 - [reentrancy-events](#reentrancy-events) (7 results) (Low)
## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-0
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L98) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L86)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L98


 - [ ] ID-1
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(cLayerCakeAddress) == cDepositCap - cDepositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1700)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702


 - [ ] ID-2
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1720)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-3
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L252-L272) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L260)

src/core/flattened/LayerCake.f.sol#L252-L272


 - [ ] ID-4
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L785-L806) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO6)](src/core/flattened/LayerCake.f.sol#L804)

src/core/flattened/LayerCake.f.sol#L785-L806


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-5
[LayerCakeBandwidthManager._proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L55-L76) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > 2 * reorgAssumption,PBP1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L58)
	- [(block.timestamp - bp.startTime) / (2 * reorgAssumption) > (bp.timeLastActive - bp.startTime) / (2 * reorgAssumption)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L60-L61)
	- [amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L64)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L65)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PBP3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L69)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L55-L76


 - [ ] ID-6
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L100-L116) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L107)
	- [bp.currentTotalBandwidth > 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L112)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,AB3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L113)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L100-L116


 - [ ] ID-7
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L118-L148) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L127)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L131)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L139)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L143)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L118-L148


 - [ ] ID-8
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L98) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L85)
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L86)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,AB3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L95)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L98


 - [ ] ID-9
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1144)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148


 - [ ] ID-10
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L292-L322) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L301)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L305)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L313)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L317)

src/core/flattened/LayerCake.f.sol#L292-L322


 - [ ] ID-11
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L447-L460) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCake.f.sol#L455)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCake.f.sol#L457)

src/core/flattened/LayerCake.f.sol#L447-L460


 - [ ] ID-12
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L866-L880) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L867)
	- [require(bool,string)(operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L868)
	- [require(bool,string)(operations.amount >= 2 * operations.fee,SO3)](src/core/flattened/LayerCake.f.sol#L870)
	- [require(bool,string)(operations.amount >= operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L872)
	- [require(bool,string)(! storageManager.getExecutionIdStored(operations.executionTime,executionId),SO6)](src/core/flattened/LayerCake.f.sol#L877)

src/core/flattened/LayerCake.f.sol#L866-L880


 - [ ] ID-13
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L462-L485) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(slots[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(slots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCake.f.sol#L479-L483)

src/core/flattened/LayerCake.f.sol#L462-L485


 - [ ] ID-14
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L772-L779) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionTime,IF1)](src/core/flattened/LayerCake.f.sol#L773)

src/core/flattened/LayerCake.f.sol#L772-L779


 - [ ] ID-15
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L882-L895) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L884)

src/core/flattened/LayerCake.f.sol#L882-L895


 - [ ] ID-16
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L252-L272) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCake.f.sol#L259)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L260)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,AB3)](src/core/flattened/LayerCake.f.sol#L269)

src/core/flattened/LayerCake.f.sol#L252-L272


 - [ ] ID-17
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L274-L290) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCake.f.sol#L281)
	- [bp.currentTotalBandwidth > 0](src/core/flattened/LayerCake.f.sol#L286)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,AB3)](src/core/flattened/LayerCake.f.sol#L287)

src/core/flattened/LayerCake.f.sol#L274-L290


 - [ ] ID-18
[LayerCakeBandwidthManager._proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCake.f.sol#L229-L250) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > 2 * reorgAssumption,PBP1)](src/core/flattened/LayerCake.f.sol#L232)
	- [(block.timestamp - bp.startTime) / (2 * reorgAssumption) > (bp.timeLastActive - bp.startTime) / (2 * reorgAssumption)](src/core/flattened/LayerCake.f.sol#L234-L235)
	- [amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L238)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCake.f.sol#L239)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PBP3)](src/core/flattened/LayerCake.f.sol#L243)

src/core/flattened/LayerCake.f.sol#L229-L250


 - [ ] ID-19
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCakeStorageManager.f.sol#L163)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCakeStorageManager.f.sol#L165)

src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168


 - [ ] ID-20
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L170-L193) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(slots[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(slots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCakeStorageManager.f.sol#L187-L191)

src/core/flattened/LayerCakeStorageManager.f.sol#L170-L193


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-21
Pragma version[0.8.19](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeBandwidthManager.f.sol#L5


 - [ ] ID-22
solc-0.8.19 is not recommended for deployment

 - [ ] ID-23
solc-0.8.19 is not recommended for deployment

 - [ ] ID-24
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageSlot.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageSlot.f.sol#L5


 - [ ] ID-25
Pragma version[0.8.19](src/core/flattened/LayerCakeExecutionProof.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeExecutionProof.f.sol#L5


 - [ ] ID-26
solc-0.8.19 is not recommended for deployment

 - [ ] ID-27
solc-0.8.19 is not recommended for deployment

 - [ ] ID-28
Pragma version[0.8.19](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-29
Pragma version[0.8.19](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-30
solc-0.8.19 is not recommended for deployment

 - [ ] ID-31
Pragma version[0.8.19](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-32
solc-0.8.19 is not recommended for deployment

 - [ ] ID-33
solc-0.8.19 is not recommended for deployment

 - [ ] ID-34
Pragma version[0.8.19](src/core/flattened/LayerCakeDeployTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-35
Pragma version[0.8.19](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeCalldataInterface.f.sol#L5


 - [ ] ID-36
solc-0.8.19 is not recommended for deployment

 - [ ] ID-37
Pragma version[0.8.19](src/core/flattened/LayerCake.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-38
solc-0.8.19 is not recommended for deployment

 - [ ] ID-39
solc-0.8.19 is not recommended for deployment

 - [ ] ID-40
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageManager.f.sol#L5


 - [ ] ID-41
Pragma version[0.8.19](src/core/flattened/LayerCakeTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTools.f.sol#L5


 - [ ] ID-42
solc-0.8.19 is not recommended for deployment

## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-43
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741) ignores return value by [EnumerableMap.remove(deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1739)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741


 - [ ] ID-44
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance + balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1723)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-45
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1722)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-46
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance_scope_0 - balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1726)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-47
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance + amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1123)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-48
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,msg.sender)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1122)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-49
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance - amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1135)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141


 - [ ] ID-50
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L725-L739) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L729)

src/core/flattened/LayerCake.f.sol#L725-L739


 - [ ] ID-51
[LayerCakeStorageManager.prepareExecutionId(bytes32,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L519-L526) ignores return value by [LayerCakeStorageSlot(slots[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L524-L525)

src/core/flattened/LayerCake.f.sol#L519-L526


 - [ ] ID-52
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCake.f.sol#L501-L509) ignores return value by [LayerCakeStorageSlot(slots[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCake.f.sol#L508)

src/core/flattened/LayerCake.f.sol#L501-L509


 - [ ] ID-53
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCakeStorageManager.f.sol#L209-L217) ignores return value by [LayerCakeStorageSlot(slots[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCakeStorageManager.f.sol#L216)

src/core/flattened/LayerCakeStorageManager.f.sol#L209-L217


 - [ ] ID-54
[LayerCakeStorageManager.prepareExecutionId(bytes32,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L227-L234) ignores return value by [LayerCakeStorageSlot(slots[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L232-L233)

src/core/flattened/LayerCakeStorageManager.f.sol#L227-L234


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-55
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L990-L992)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-56
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L896-L898)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-57
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L312-L314)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-58
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L386-L388)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-59
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L708-L710)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-60
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L460-L462)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-61
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L802-L804)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-62
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1067-L1069)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-63
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L389-L391)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-64
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L463-L465)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-65
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L973-L975)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-66
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L879-L881)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-67
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-68
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L537-L539)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-69
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeCalldataInterface.f.sol#L95-L97)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-70
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L619-L629) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L624-L626)

src/core/flattened/LayerCake.f.sol#L619-L629


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-71
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-72
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579


 - [ ] ID-73
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753


 - [ ] ID-74
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619


 - [ ] ID-75
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283


 - [ ] ID-76
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297


 - [ ] ID-77
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693


 - [ ] ID-78
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918


 - [ ] ID-79
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217


 - [ ] ID-80
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231


 - [ ] ID-81
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417


 - [ ] ID-82
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927


 - [ ] ID-83
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840


 - [ ] ID-84
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682


 - [ ] ID-85
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776


 - [ ] ID-86
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847


 - [ ] ID-87
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-88
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-89
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636


 - [ ] ID-90
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964


 - [ ] ID-91
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424


 - [ ] ID-92
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-93
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343


 - [ ] ID-94
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597


 - [ ] ID-95
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652


 - [ ] ID-96
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934


 - [ ] ID-97
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371


 - [ ] ID-98
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350


 - [ ] ID-99
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955


 - [ ] ID-100
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357


 - [ ] ID-101
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243


 - [ ] ID-102
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739


 - [ ] ID-103
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-104
[Context._msgData()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142


 - [ ] ID-105
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746


 - [ ] ID-106
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564


 - [ ] ID-107
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659


 - [ ] ID-108
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673


 - [ ] ID-109
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431


 - [ ] ID-110
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787


 - [ ] ID-111
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730


 - [ ] ID-112
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445


 - [ ] ID-113
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-114
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333


 - [ ] ID-115
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767


 - [ ] ID-116
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941


 - [ ] ID-117
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645


 - [ ] ID-118
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86


 - [ ] ID-119
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975


 - [ ] ID-120
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407


 - [ ] ID-121
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861


 - [ ] ID-122
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-123
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-124
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656


 - [ ] ID-125
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830


 - [ ] ID-126
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696


 - [ ] ID-127
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360


 - [ ] ID-128
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374


 - [ ] ID-129
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770


 - [ ] ID-130
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995


 - [ ] ID-131
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294


 - [ ] ID-132
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308


 - [ ] ID-133
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494


 - [ ] ID-134
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004


 - [ ] ID-135
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917


 - [ ] ID-136
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759


 - [ ] ID-137
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853


 - [ ] ID-138
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924


 - [ ] ID-139
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-140
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-141
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713


 - [ ] ID-142
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041


 - [ ] ID-143
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501


 - [ ] ID-144
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-145
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420


 - [ ] ID-146
[EnumerableMap.remove(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910


 - [ ] ID-147
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729


 - [ ] ID-148
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011


 - [ ] ID-149
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448


 - [ ] ID-150
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427


 - [ ] ID-151
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032


 - [ ] ID-152
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434


 - [ ] ID-153
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320


 - [ ] ID-154
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816


 - [ ] ID-155
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-156
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823


 - [ ] ID-157
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641


 - [ ] ID-158
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736


 - [ ] ID-159
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750


 - [ ] ID-160
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508


 - [ ] ID-161
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864


 - [ ] ID-162
[EnumerableMap.remove(EnumerableMap.Bytes32ToBytes32Map,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627


 - [ ] ID-163
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807


 - [ ] ID-164
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522


 - [ ] ID-165
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-166
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410


 - [ ] ID-167
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844


 - [ ] ID-168
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018


 - [ ] ID-169
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722


 - [ ] ID-170
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86


 - [ ] ID-171
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052


 - [ ] ID-172
[EnumerableSet._remove(EnumerableSet.Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280


 - [ ] ID-173
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484


 - [ ] ID-174
[EnumerableSet.remove(EnumerableSet.Bytes32Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346


 - [ ] ID-175
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938


 - [ ] ID-176
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-177
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582


 - [ ] ID-178
[Context._msgData()](src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127


 - [ ] ID-179
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86


 - [ ] ID-180
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCake.f.sol#L613-L615) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L613-L615


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-181
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L92)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-182
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L619-L629):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCake.f.sol#L621)

src/core/flattened/LayerCake.f.sol#L619-L629


## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-183
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L447-L460) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L456)" 

src/core/flattened/LayerCake.f.sol#L447-L460


 - [ ] ID-184
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L164)" 

src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-185
Reentrancy in [LayerCake.subtractBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L766-L770):
	External calls:
	- [withdrawnAmount = bandwidthManager.subtractBandwidth(msg.sender,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L767)
	- [require(bool,string)(token.transfer(msg.sender,withdrawnAmount),SB1)](src/core/flattened/LayerCake.f.sol#L768)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,false,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L769)

src/core/flattened/LayerCake.f.sol#L766-L770


 - [ ] ID-186
Reentrancy in [LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L741-L755):
	External calls:
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),operations.amount),SNO3)](src/core/flattened/LayerCake.f.sol#L745)
	- [operations.amount = bandwidthManager.negateBp(operations.negatedBandwidthProvider,operations.amount,operations.fee,operations.initialNegation,operations.invalidExecutionProofId)](src/core/flattened/LayerCake.f.sol#L747-L753)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L754)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L878)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L879)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L754)

src/core/flattened/LayerCake.f.sol#L741-L755


 - [ ] ID-187
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L709-L723):
	External calls:
	- [require(bool,string)(token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee),SSO4)](src/core/flattened/LayerCake.f.sol#L716)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),operations.amount),SSO6)](src/core/flattened/LayerCake.f.sol#L720)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L722)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L878)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L879)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L722)

src/core/flattened/LayerCake.f.sol#L709-L723


 - [ ] ID-188
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L757-L764):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L758)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),depositedAmount),AB1)](src/core/flattened/LayerCake.f.sol#L760)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L763)

src/core/flattened/LayerCake.f.sol#L757-L764


 - [ ] ID-189
Reentrancy in [LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L725-L739):
	External calls:
	- [(partialFee,executionPrepared) = _executeOperations(cancelExecutionProof,true)](src/core/flattened/LayerCake.f.sol#L734)
		- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L886-L887)
		- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L890)
		- [require(bool,string)(token.transfer(msg.sender,partialFee),EO4)](src/core/flattened/LayerCake.f.sol#L891)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L738)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L878)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L879)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L738)

src/core/flattened/LayerCake.f.sol#L725-L739


 - [ ] ID-190
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L866-L880):
	External calls:
	- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L878)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L879)

src/core/flattened/LayerCake.f.sol#L866-L880


 - [ ] ID-191
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L882-L895):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L886-L887)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L890)
	- [require(bool,string)(token.transfer(msg.sender,partialFee),EO4)](src/core/flattened/LayerCake.f.sol#L891)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L893)

src/core/flattened/LayerCake.f.sol#L882-L895


