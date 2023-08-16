Summary
 - [incorrect-equality](#incorrect-equality) (5 results) (Medium)
 - [timestamp](#timestamp) (12 results) (Low)
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
[LayerCakeBandwidthManager._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L61-L102) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L83)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L61-L102


 - [ ] ID-1
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1696-L1708) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(cLayerCakeAddress) == cDepositCap - cDepositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1706)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1696-L1708


 - [ ] ID-2
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1726)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740


 - [ ] ID-3
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L792-L813) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO6)](src/core/flattened/LayerCake.f.sol#L811)

src/core/flattened/LayerCake.f.sol#L792-L813


 - [ ] ID-4
[LayerCakeBandwidthManager._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L233-L274) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L255)

src/core/flattened/LayerCake.f.sol#L233-L274


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-5
[LayerCakeBandwidthManager._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L61-L102) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L63)
	- [require(bool,string)(block.timestamp >= bp.timeLastActive,PB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L64)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCakeBandwidthManager.f.sol#L68-L69)
	- [bp.currentUsedBandwidth > bp.currentTotalBandwidth || amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L73-L74)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PB3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L76)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L81)
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L83)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,PB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L89)
	- [require(bool,string)(bp.currentTotalBandwidth <= minBandwidth * MAX_BANDWIDTH_MULTIPLE,PB6)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L90)
	- [bp.currentTotalBandwidth > 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L97)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,PB7)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L98)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L61-L102


 - [ ] ID-6
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L126-L157) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L135)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L139)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth / MAX_BANDWIDTH_MULTIPLE,NB3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L142)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L148)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L152)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L126-L157


 - [ ] ID-7
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1144)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143-L1148


 - [ ] ID-8
[LayerCakeBandwidthManager._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L233-L274) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PB1)](src/core/flattened/LayerCake.f.sol#L235)
	- [require(bool,string)(block.timestamp >= bp.timeLastActive,PB2)](src/core/flattened/LayerCake.f.sol#L236)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCake.f.sol#L240-L241)
	- [bp.currentUsedBandwidth > bp.currentTotalBandwidth || amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L245-L246)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PB3)](src/core/flattened/LayerCake.f.sol#L248)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PB4)](src/core/flattened/LayerCake.f.sol#L253)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L255)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,PB5)](src/core/flattened/LayerCake.f.sol#L261)
	- [require(bool,string)(bp.currentTotalBandwidth <= minBandwidth * MAX_BANDWIDTH_MULTIPLE,PB6)](src/core/flattened/LayerCake.f.sol#L262)
	- [bp.currentTotalBandwidth > 0](src/core/flattened/LayerCake.f.sol#L269)
	- [require(bool,string)(bp.currentTotalBandwidth >= minBandwidth,PB7)](src/core/flattened/LayerCake.f.sol#L270)

src/core/flattened/LayerCake.f.sol#L233-L274


 - [ ] ID-9
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L469-L492) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(slots[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(slots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCake.f.sol#L486-L490)

src/core/flattened/LayerCake.f.sol#L469-L492


 - [ ] ID-10
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L298-L329) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L307)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L311)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth / MAX_BANDWIDTH_MULTIPLE,NB3)](src/core/flattened/LayerCake.f.sol#L314)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L320)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L324)

src/core/flattened/LayerCake.f.sol#L298-L329


 - [ ] ID-11
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L889-L902) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L891)

src/core/flattened/LayerCake.f.sol#L889-L902


 - [ ] ID-12
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L873-L887) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L874)
	- [require(bool,string)(operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L875)
	- [require(bool,string)(operations.amount >= 2 * operations.fee,SO3)](src/core/flattened/LayerCake.f.sol#L877)
	- [require(bool,string)(operations.amount >= operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L879)
	- [require(bool,string)(! storageManager.getExecutionIdStored(operations.executionTime,executionId),SO6)](src/core/flattened/LayerCake.f.sol#L884)

src/core/flattened/LayerCake.f.sol#L873-L887


 - [ ] ID-13
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L454-L467) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCake.f.sol#L462)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCake.f.sol#L464)

src/core/flattened/LayerCake.f.sol#L454-L467


 - [ ] ID-14
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L779-L786) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionTime,IF1)](src/core/flattened/LayerCake.f.sol#L780)

src/core/flattened/LayerCake.f.sol#L779-L786


 - [ ] ID-15
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCakeStorageManager.f.sol#L163)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCakeStorageManager.f.sol#L165)

src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168


 - [ ] ID-16
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L170-L193) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(timestamp >= LayerCakeStorageSlot(slots[thisStorageSlot]).storageStartTime() && timestamp < LayerCakeStorageSlot(slots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCakeStorageManager.f.sol#L187-L191)

src/core/flattened/LayerCakeStorageManager.f.sol#L170-L193


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-17
Pragma version[0.8.19](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeBandwidthManager.f.sol#L5


 - [ ] ID-18
solc-0.8.19 is not recommended for deployment

 - [ ] ID-19
solc-0.8.19 is not recommended for deployment

 - [ ] ID-20
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageSlot.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageSlot.f.sol#L5


 - [ ] ID-21
Pragma version[0.8.19](src/core/flattened/LayerCakeExecutionProof.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeExecutionProof.f.sol#L5


 - [ ] ID-22
solc-0.8.19 is not recommended for deployment

 - [ ] ID-23
solc-0.8.19 is not recommended for deployment

 - [ ] ID-24
Pragma version[0.8.19](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-25
Pragma version[0.8.19](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-26
solc-0.8.19 is not recommended for deployment

 - [ ] ID-27
Pragma version[0.8.19](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-28
solc-0.8.19 is not recommended for deployment

 - [ ] ID-29
solc-0.8.19 is not recommended for deployment

 - [ ] ID-30
Pragma version[0.8.19](src/core/flattened/LayerCakeDeployTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-31
Pragma version[0.8.19](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeCalldataInterface.f.sol#L5


 - [ ] ID-32
solc-0.8.19 is not recommended for deployment

 - [ ] ID-33
Pragma version[0.8.19](src/core/flattened/LayerCake.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-34
solc-0.8.19 is not recommended for deployment

 - [ ] ID-35
solc-0.8.19 is not recommended for deployment

 - [ ] ID-36
Pragma version[0.8.19](src/core/flattened/LayerCakeStorageManager.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeStorageManager.f.sol#L5


 - [ ] ID-37
Pragma version[0.8.19](src/core/flattened/LayerCakeTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTools.f.sol#L5


 - [ ] ID-38
solc-0.8.19 is not recommended for deployment

## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-39
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance + balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1729)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740


 - [ ] ID-40
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1728)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740


 - [ ] ID-41
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1742-L1747) ignores return value by [EnumerableMap.remove(deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1745)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1742-L1747


 - [ ] ID-42
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance_scope_0 - balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1732)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1725-L1740


 - [ ] ID-43
[LayerCakeOriginDeploy.deposit(uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [EnumerableMap.set(deposits,withdrawalAddress,currentBalance + amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1123)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-44
[LayerCakeOriginDeploy.deposit(uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,withdrawalAddress)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1122)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1120-L1130


 - [ ] ID-45
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance - amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1135)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1132-L1141


 - [ ] ID-46
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L732-L746) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L736)

src/core/flattened/LayerCake.f.sol#L732-L746


 - [ ] ID-47
[LayerCakeStorageManager.prepareExecutionId(bytes32,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L526-L533) ignores return value by [LayerCakeStorageSlot(slots[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L531-L532)

src/core/flattened/LayerCake.f.sol#L526-L533


 - [ ] ID-48
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCake.f.sol#L508-L516) ignores return value by [LayerCakeStorageSlot(slots[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCake.f.sol#L515)

src/core/flattened/LayerCake.f.sol#L508-L516


 - [ ] ID-49
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCakeStorageManager.f.sol#L209-L217) ignores return value by [LayerCakeStorageSlot(slots[storageSlot]).getExecutionIdPrepared(executionId)](src/core/flattened/LayerCakeStorageManager.f.sol#L216)

src/core/flattened/LayerCakeStorageManager.f.sol#L209-L217


 - [ ] ID-50
[LayerCakeStorageManager.prepareExecutionId(bytes32,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L227-L234) ignores return value by [LayerCakeStorageSlot(slots[_checkCreateStorageSlot(executionProof.operations.executionTime)]).prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L232-L233)

src/core/flattened/LayerCakeStorageManager.f.sol#L227-L234


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-51
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L990-L992)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-52
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L896-L898)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-53
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L312-L314)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-54
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L386-L388)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-55
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L708-L710)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-56
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L460-L462)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-57
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L802-L804)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-58
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1067-L1069)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-59
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L389-L391)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-60
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L463-L465)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-61
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L973-L975)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-62
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L879-L881)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-63
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-64
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L537-L539)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-65
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeCalldataInterface.f.sol#L95-L97)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-66
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L626-L636) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L631-L633)

src/core/flattened/LayerCake.f.sol#L626-L636


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-67
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-68
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579


 - [ ] ID-69
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753


 - [ ] ID-70
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619


 - [ ] ID-71
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283


 - [ ] ID-72
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297


 - [ ] ID-73
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693


 - [ ] ID-74
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918


 - [ ] ID-75
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217


 - [ ] ID-76
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231


 - [ ] ID-77
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417


 - [ ] ID-78
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927


 - [ ] ID-79
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840


 - [ ] ID-80
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682


 - [ ] ID-81
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776


 - [ ] ID-82
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847


 - [ ] ID-83
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-84
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-85
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636


 - [ ] ID-86
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964


 - [ ] ID-87
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424


 - [ ] ID-88
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-89
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343


 - [ ] ID-90
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597


 - [ ] ID-91
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652


 - [ ] ID-92
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934


 - [ ] ID-93
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371


 - [ ] ID-94
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350


 - [ ] ID-95
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955


 - [ ] ID-96
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357


 - [ ] ID-97
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243


 - [ ] ID-98
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739


 - [ ] ID-99
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-100
[Context._msgData()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142


 - [ ] ID-101
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746


 - [ ] ID-102
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564


 - [ ] ID-103
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659


 - [ ] ID-104
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673


 - [ ] ID-105
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431


 - [ ] ID-106
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787


 - [ ] ID-107
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730


 - [ ] ID-108
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445


 - [ ] ID-109
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-110
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333


 - [ ] ID-111
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767


 - [ ] ID-112
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941


 - [ ] ID-113
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645


 - [ ] ID-114
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86


 - [ ] ID-115
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975


 - [ ] ID-116
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407


 - [ ] ID-117
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861


 - [ ] ID-118
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-119
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-120
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656


 - [ ] ID-121
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830


 - [ ] ID-122
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696


 - [ ] ID-123
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360


 - [ ] ID-124
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374


 - [ ] ID-125
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770


 - [ ] ID-126
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995


 - [ ] ID-127
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294


 - [ ] ID-128
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308


 - [ ] ID-129
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494


 - [ ] ID-130
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004


 - [ ] ID-131
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917


 - [ ] ID-132
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759


 - [ ] ID-133
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853


 - [ ] ID-134
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924


 - [ ] ID-135
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-136
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-137
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713


 - [ ] ID-138
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041


 - [ ] ID-139
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501


 - [ ] ID-140
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-141
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420


 - [ ] ID-142
[EnumerableMap.remove(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910


 - [ ] ID-143
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729


 - [ ] ID-144
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011


 - [ ] ID-145
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448


 - [ ] ID-146
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427


 - [ ] ID-147
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032


 - [ ] ID-148
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434


 - [ ] ID-149
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320


 - [ ] ID-150
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816


 - [ ] ID-151
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-152
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823


 - [ ] ID-153
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641


 - [ ] ID-154
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736


 - [ ] ID-155
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750


 - [ ] ID-156
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508


 - [ ] ID-157
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864


 - [ ] ID-158
[EnumerableMap.remove(EnumerableMap.Bytes32ToBytes32Map,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627


 - [ ] ID-159
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807


 - [ ] ID-160
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522


 - [ ] ID-161
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-162
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410


 - [ ] ID-163
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844


 - [ ] ID-164
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018


 - [ ] ID-165
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722


 - [ ] ID-166
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86


 - [ ] ID-167
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052


 - [ ] ID-168
[EnumerableSet._remove(EnumerableSet.Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280


 - [ ] ID-169
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484


 - [ ] ID-170
[EnumerableSet.remove(EnumerableSet.Bytes32Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346


 - [ ] ID-171
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938


 - [ ] ID-172
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-173
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582


 - [ ] ID-174
[Context._msgData()](src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127


 - [ ] ID-175
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86


 - [ ] ID-176
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCake.f.sol#L620-L622) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L620-L622


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-177
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L92)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L100


 - [ ] ID-178
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L626-L636):
	- [(success,result) = address(recipient).call(callData)](src/core/flattened/LayerCake.f.sol#L628)

src/core/flattened/LayerCake.f.sol#L626-L636


## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-179
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L454-L467) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L463)" 

src/core/flattened/LayerCake.f.sol#L454-L467


 - [ ] ID-180
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L164)" 

src/core/flattened/LayerCakeStorageManager.f.sol#L155-L168


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-181
Reentrancy in [LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L748-L762):
	External calls:
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),operations.amount),SNO3)](src/core/flattened/LayerCake.f.sol#L752)
	- [operations.amount = bandwidthManager.negateBp(operations.negatedBandwidthProvider,operations.amount,operations.fee,operations.initialNegation,operations.invalidExecutionProofId)](src/core/flattened/LayerCake.f.sol#L754-L760)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L761)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L885)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L886)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L761)

src/core/flattened/LayerCake.f.sol#L748-L762


 - [ ] ID-182
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L889-L902):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L893-L894)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L897)
	- [require(bool,string)(token.transfer(msg.sender,partialFee),EO4)](src/core/flattened/LayerCake.f.sol#L898)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L900)

src/core/flattened/LayerCake.f.sol#L889-L902


 - [ ] ID-183
Reentrancy in [LayerCake.subtractBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L773-L777):
	External calls:
	- [withdrawnAmount = bandwidthManager.subtractBandwidth(msg.sender,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L774)
	- [require(bool,string)(token.transfer(msg.sender,withdrawnAmount),SB1)](src/core/flattened/LayerCake.f.sol#L775)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,false,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L776)

src/core/flattened/LayerCake.f.sol#L773-L777


 - [ ] ID-184
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L716-L730):
	External calls:
	- [require(bool,string)(token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee),SSO4)](src/core/flattened/LayerCake.f.sol#L723)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),operations.amount),SSO6)](src/core/flattened/LayerCake.f.sol#L727)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L729)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L885)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L886)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L729)

src/core/flattened/LayerCake.f.sol#L716-L730


 - [ ] ID-185
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L764-L771):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L765)
	- [require(bool,string)(token.transferFrom(msg.sender,address(this),depositedAmount),AB1)](src/core/flattened/LayerCake.f.sol#L767)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L770)

src/core/flattened/LayerCake.f.sol#L764-L771


 - [ ] ID-186
Reentrancy in [LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L732-L746):
	External calls:
	- [(partialFee,executionPrepared) = _executeOperations(cancelExecutionProof,true)](src/core/flattened/LayerCake.f.sol#L741)
		- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,executionProof)](src/core/flattened/LayerCake.f.sol#L893-L894)
		- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L897)
		- [require(bool,string)(token.transfer(msg.sender,partialFee),EO4)](src/core/flattened/LayerCake.f.sol#L898)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L745)
		- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L885)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L886)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L745)

src/core/flattened/LayerCake.f.sol#L732-L746


 - [ ] ID-187
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L873-L887):
	External calls:
	- [storageManager.storeExecutionId(operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L885)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L886)

src/core/flattened/LayerCake.f.sol#L873-L887


