Summary
 - [incorrect-equality](#incorrect-equality) (5 results) (Medium)
 - [timestamp](#timestamp) (18 results) (Low)
 - [solc-version](#solc-version) (22 results) (Informational)
 - [unused-return](#unused-return) (12 results) (Medium)
 - [assembly](#assembly) (16 results) (Informational)
 - [dead-code](#dead-code) (110 results) (Informational)
 - [low-level-calls](#low-level-calls) (2 results) (Informational)
 - [weak-prng](#weak-prng) (2 results) (High)
 - [reentrancy-events](#reentrancy-events) (4 results) (Low)
 - [naming-convention](#naming-convention) (2 results) (Informational)
## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-0
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L90)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100


 - [ ] ID-1
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(cLayerCakeAddress) == cDepositCap - cDepositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1700)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702


 - [ ] ID-2
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1720)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-3
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L346-L364) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L354)

src/core/flattened/LayerCake.f.sol#L346-L364


 - [ ] ID-4
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L806-L827) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO6)](src/core/flattened/LayerCake.f.sol#L825)

src/core/flattened/LayerCake.f.sol#L806-L827


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-5
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L102-L115) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L109)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L102-L115


 - [ ] ID-6
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L89)
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L90)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L82-L100


 - [ ] ID-7
[LayerCakeBandwidthManager._proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L62-L80) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L65)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCakeBandwidthManager.f.sol#L66)
	- [amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L68)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L69)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PBP3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L73)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L62-L80


 - [ ] ID-8
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L117-L147) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L126)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L130)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L138)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L142)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L117-L147


 - [ ] ID-9
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L149-L154) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L151)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L149-L154


 - [ ] ID-10
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1144)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148


 - [ ] ID-11
[LayerCakeBandwidthManager._proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCake.f.sol#L326-L344) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCake.f.sol#L329)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCake.f.sol#L330)
	- [amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L332)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCake.f.sol#L333)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PBP3)](src/core/flattened/LayerCake.f.sol#L337)

src/core/flattened/LayerCake.f.sol#L326-L344


 - [ ] ID-12
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L554-L567) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCake.f.sol#L562)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCake.f.sol#L564)

src/core/flattened/LayerCake.f.sol#L554-L567


 - [ ] ID-13
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L346-L364) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCake.f.sol#L353)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L354)

src/core/flattened/LayerCake.f.sol#L346-L364


 - [ ] ID-14
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L381-L411) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L390)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L394)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L402)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L406)

src/core/flattened/LayerCake.f.sol#L381-L411


 - [ ] ID-15
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L887-L901) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L888)
	- [require(bool,string)(operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L889)
	- [require(bool,string)(operations.amount >= 2 * operations.fee,SO3)](src/core/flattened/LayerCake.f.sol#L891)
	- [require(bool,string)(operations.amount >= operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L893)
	- [require(bool,string)(! storageManager.getExecutionIdStored(operations.executionTime,executionId),SO6)](src/core/flattened/LayerCake.f.sol#L898)

src/core/flattened/LayerCake.f.sol#L887-L901


 - [ ] ID-16
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L795-L800) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionTime,IF1)](src/core/flattened/LayerCake.f.sol#L796)

src/core/flattened/LayerCake.f.sol#L795-L800


 - [ ] ID-17
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L366-L379) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCake.f.sol#L373)

src/core/flattened/LayerCake.f.sol#L366-L379


 - [ ] ID-18
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L569-L592) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCake.f.sol#L586-L590)

src/core/flattened/LayerCake.f.sol#L569-L592


 - [ ] ID-19
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCake.f.sol#L413-L418) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCake.f.sol#L415)

src/core/flattened/LayerCake.f.sol#L413-L418


 - [ ] ID-20
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L903-L916) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L905)

src/core/flattened/LayerCake.f.sol#L903-L916


 - [ ] ID-21
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L181-L204) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCakeStorageManager.f.sol#L198-L202)

src/core/flattened/LayerCakeStorageManager.f.sol#L181-L204


 - [ ] ID-22
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L166-L179) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCakeStorageManager.f.sol#L174)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCakeStorageManager.f.sol#L176)

src/core/flattened/LayerCakeStorageManager.f.sol#L166-L179


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-23
Pragma version[0.8.19](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeBandwidthManager.f.sol#L5


 - [ ] ID-24
solc-0.8.19 is not recommended for deployment

 - [ ] ID-25
solc-0.8.19 is not recommended for deployment

 - [ ] ID-26
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageSlot.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageSlot.f.sol#L5


 - [ ] ID-27
Pragma version[0.8.19](src/core/flattened/LayerCakeExecutionProof.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeExecutionProof.f.sol#L5


 - [ ] ID-28
solc-0.8.19 is not recommended for deployment

 - [ ] ID-29
solc-0.8.19 is not recommended for deployment

 - [ ] ID-30
Pragma version[0.8.19](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-31
Pragma version[0.8.19](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-32
solc-0.8.19 is not recommended for deployment

 - [ ] ID-33
Pragma version[0.8.19](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-34
solc-0.8.19 is not recommended for deployment

 - [ ] ID-35
solc-0.8.19 is not recommended for deployment

 - [ ] ID-36
Pragma version[0.8.19](src/core/flattened/LayerCakeDeployTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-37
Pragma version[0.8.19](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeCalldataInterface.f.sol#L5


 - [ ] ID-38
solc-0.8.19 is not recommended for deployment

 - [ ] ID-39
Pragma version[0.8.19](src/core/flattened/LayerCake.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-40
solc-0.8.19 is not recommended for deployment

 - [ ] ID-41
solc-0.8.19 is not recommended for deployment

 - [ ] ID-42
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageManager.f.sol#L5


 - [ ] ID-43
Pragma version[0.8.19](src/core/flattened/LayerCakeTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTools.f.sol#L5


 - [ ] ID-44
solc-0.8.19 is not recommended for deployment

## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-45
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741) ignores return value by [EnumerableMap.remove(deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1739)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741


 - [ ] ID-46
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance + balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1723)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-47
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1722)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-48
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance_scope_0 - balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1726)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-49
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance + amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1123)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-50
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,msg.sender)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1122)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-51
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance - amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1135)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141


 - [ ] ID-52
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCake.f.sol#L608-L616) ignores return value by [LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCake.f.sol#L615)

src/core/flattened/LayerCake.f.sol#L608-L616


 - [ ] ID-53
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L631-L639) ignores return value by [LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,preparer,executionProof)](src/core/flattened/LayerCake.f.sol#L636-L638)

src/core/flattened/LayerCake.f.sol#L631-L639


 - [ ] ID-54
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L750-L764) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L754)

src/core/flattened/LayerCake.f.sol#L750-L764


 - [ ] ID-55
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCakeStorageManager.f.sol#L220-L228) ignores return value by [LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCakeStorageManager.f.sol#L227)

src/core/flattened/LayerCakeStorageManager.f.sol#L220-L228


 - [ ] ID-56
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L243-L251) ignores return value by [LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,preparer,executionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L248-L250)

src/core/flattened/LayerCakeStorageManager.f.sol#L243-L251


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-57
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L990-L992)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-58
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L896-L898)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-59
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L312-L314)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-60
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L386-L388)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-61
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L708-L710)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-62
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L460-L462)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-63
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L802-L804)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-64
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1067-L1069)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-65
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L389-L391)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-66
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L463-L465)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-67
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L973-L975)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-68
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L879-L881)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-69
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-70
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L537-L539)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-71
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeCalldataInterface.f.sol#L95-L97)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-72
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L652-L662) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L657-L659)

src/core/flattened/LayerCake.f.sol#L652-L662


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-73
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-74
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579


 - [ ] ID-75
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753


 - [ ] ID-76
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619


 - [ ] ID-77
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283


 - [ ] ID-78
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297


 - [ ] ID-79
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693


 - [ ] ID-80
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918


 - [ ] ID-81
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217


 - [ ] ID-82
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231


 - [ ] ID-83
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417


 - [ ] ID-84
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927


 - [ ] ID-85
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840


 - [ ] ID-86
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682


 - [ ] ID-87
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776


 - [ ] ID-88
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847


 - [ ] ID-89
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-90
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-91
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636


 - [ ] ID-92
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964


 - [ ] ID-93
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424


 - [ ] ID-94
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-95
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343


 - [ ] ID-96
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597


 - [ ] ID-97
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652


 - [ ] ID-98
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934


 - [ ] ID-99
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371


 - [ ] ID-100
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350


 - [ ] ID-101
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955


 - [ ] ID-102
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357


 - [ ] ID-103
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243


 - [ ] ID-104
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739


 - [ ] ID-105
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-106
[Context._msgData()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142


 - [ ] ID-107
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746


 - [ ] ID-108
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564


 - [ ] ID-109
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659


 - [ ] ID-110
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673


 - [ ] ID-111
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431


 - [ ] ID-112
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787


 - [ ] ID-113
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730


 - [ ] ID-114
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445


 - [ ] ID-115
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-116
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333


 - [ ] ID-117
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767


 - [ ] ID-118
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941


 - [ ] ID-119
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645


 - [ ] ID-120
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86


 - [ ] ID-121
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975


 - [ ] ID-122
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407


 - [ ] ID-123
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861


 - [ ] ID-124
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-125
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-126
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656


 - [ ] ID-127
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830


 - [ ] ID-128
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696


 - [ ] ID-129
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360


 - [ ] ID-130
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374


 - [ ] ID-131
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770


 - [ ] ID-132
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995


 - [ ] ID-133
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294


 - [ ] ID-134
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308


 - [ ] ID-135
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494


 - [ ] ID-136
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004


 - [ ] ID-137
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917


 - [ ] ID-138
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759


 - [ ] ID-139
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853


 - [ ] ID-140
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924


 - [ ] ID-141
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-142
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-143
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713


 - [ ] ID-144
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041


 - [ ] ID-145
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501


 - [ ] ID-146
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-147
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420


 - [ ] ID-148
[EnumerableMap.remove(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910


 - [ ] ID-149
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729


 - [ ] ID-150
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011


 - [ ] ID-151
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448


 - [ ] ID-152
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427


 - [ ] ID-153
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032


 - [ ] ID-154
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434


 - [ ] ID-155
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320


 - [ ] ID-156
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816


 - [ ] ID-157
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-158
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823


 - [ ] ID-159
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641


 - [ ] ID-160
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736


 - [ ] ID-161
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750


 - [ ] ID-162
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508


 - [ ] ID-163
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864


 - [ ] ID-164
[EnumerableMap.remove(EnumerableMap.Bytes32ToBytes32Map,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627


 - [ ] ID-165
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807


 - [ ] ID-166
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522


 - [ ] ID-167
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-168
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410


 - [ ] ID-169
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844


 - [ ] ID-170
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018


 - [ ] ID-171
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722


 - [ ] ID-172
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86


 - [ ] ID-173
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052


 - [ ] ID-174
[EnumerableSet._remove(EnumerableSet.Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280


 - [ ] ID-175
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484


 - [ ] ID-176
[EnumerableSet.remove(EnumerableSet.Bytes32Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346


 - [ ] ID-177
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938


 - [ ] ID-178
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-179
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582


 - [ ] ID-180
[Context._msgData()](src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127


 - [ ] ID-181
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86


 - [ ] ID-182
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCake.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L84-L86


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-183
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L92)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-184
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L652-L662):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCake.f.sol#L654)

src/core/flattened/LayerCake.f.sol#L652-L662


## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-185
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L554-L567) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L563)" 

src/core/flattened/LayerCake.f.sol#L554-L567


 - [ ] ID-186
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L166-L179) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L175)" 

src/core/flattened/LayerCakeStorageManager.f.sol#L166-L179


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-187
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L734-L748):
	External calls:
	- [require(bool,string)(token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee),SSO4)](src/core/flattened/LayerCake.f.sol#L741)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),operations.amount),SSO6)](src/core/flattened/LayerCake.f.sol#L745)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L747)
		- [storageManager.storeExecutionId(operations.executionTime,executionId,operations.sender,operations.amount)](src/core/flattened/LayerCake.f.sol#L899)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L900)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L747)

src/core/flattened/LayerCake.f.sol#L734-L748


 - [ ] ID-188
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L887-L901):
	External calls:
	- [storageManager.storeExecutionId(operations.executionTime,executionId,operations.sender,operations.amount)](src/core/flattened/LayerCake.f.sol#L899)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L900)

src/core/flattened/LayerCake.f.sol#L887-L901


 - [ ] ID-189
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L782-L787):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L783)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),depositedAmount),AB1)](src/core/flattened/LayerCake.f.sol#L784)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L786)

src/core/flattened/LayerCake.f.sol#L782-L787


 - [ ] ID-190
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L903-L916):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,msg.sender,executionProof)](src/core/flattened/LayerCake.f.sol#L907-L908)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L911)
	- [require(bool,string)(token.transfer(msg.sender,partialFee),EO4)](src/core/flattened/LayerCake.f.sol#L912)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L914)

src/core/flattened/LayerCake.f.sol#L903-L916


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-191
Variable [LayerCakeStorageManager.layerCakeSTORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L530) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L530


 - [ ] ID-192
Variable [LayerCakeStorageManager.layerCakeSTORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L142) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L142


