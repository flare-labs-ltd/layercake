Summary
 - [incorrect-equality](#incorrect-equality) (5 results) (Medium)
 - [missing-zero-check](#missing-zero-check) (10 results) (Low)
 - [timestamp](#timestamp) (18 results) (Low)
 - [solc-version](#solc-version) (11 results) (Informational)
 - [naming-convention](#naming-convention) (136 results) (Informational)
 - [unchecked-transfer](#unchecked-transfer) (14 results) (High)
 - [unused-return](#unused-return) (12 results) (Medium)
 - [assembly](#assembly) (16 results) (Informational)
 - [dead-code](#dead-code) (110 results) (Informational)
 - [constable-states](#constable-states) (2 results) (Optimization)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
 - [reentrancy-benign](#reentrancy-benign) (2 results) (Low)
 - [low-level-calls](#low-level-calls) (2 results) (Informational)
 - [weak-prng](#weak-prng) (2 results) (High)
 - [reentrancy-events](#reentrancy-events) (4 results) (Low)
## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-0
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L96) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L86)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L96


 - [ ] ID-1
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(_layerCakeAddress) == _depositCap - _depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1700)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1690-L1702


 - [ ] ID-2
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1720)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-3
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L343-L361) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L351)

src/core/flattened/LayerCake.f.sol#L343-L361


 - [ ] ID-4
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L800-L818) uses a dangerous strict equality:
	- [require(bool,string)(token.balanceOf(address(calldataInterface)) == currentBalance,ESO5)](src/core/flattened/LayerCake.f.sol#L816)

src/core/flattened/LayerCake.f.sol#L800-L818


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-5
[LayerCakeBandwidthManager.constructor(address,uint256,uint256,uint256)._layerCakeContract](src/core/flattened/LayerCakeBandwidthManager.f.sol#L29) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCakeBandwidthManager.f.sol#L34)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L29


 - [ ] ID-6
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCakeStorageSlot.f.sol#L56) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCakeStorageSlot.f.sol#L57)

src/core/flattened/LayerCakeStorageSlot.f.sol#L56


 - [ ] ID-7
[LayerCakeOriginDeploy.constructor(address,address,uint256,uint256)._layerCakeAddress](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1107) lacks a zero-check on :
		- [layerCakeAddress = _layerCakeAddress](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1108)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1107


 - [ ] ID-8
[LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90) lacks a zero-check on :
		- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L91)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90


 - [ ] ID-9
[LayerCakeBandwidthManager.constructor(address,uint256,uint256,uint256)._layerCakeContract](src/core/flattened/LayerCake.f.sol#L294) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCake.f.sol#L299)

src/core/flattened/LayerCake.f.sol#L294


 - [ ] ID-10
[LayerCakeStorageManager.constructor(address)._layerCakeContract](src/core/flattened/LayerCake.f.sol#L527) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCake.f.sol#L528)

src/core/flattened/LayerCake.f.sol#L527


 - [ ] ID-11
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCake.f.sol#L444) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCake.f.sol#L445)

src/core/flattened/LayerCake.f.sol#L444


 - [ ] ID-12
[LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCake.f.sol#L645) lacks a zero-check on :
		- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCake.f.sol#L646)

src/core/flattened/LayerCake.f.sol#L645


 - [ ] ID-13
[LayerCakeStorageSlot.constructor(address,uint256,uint256)._storageManager](src/core/flattened/LayerCakeStorageManager.f.sol#L59) lacks a zero-check on :
		- [storageManager = _storageManager](src/core/flattened/LayerCakeStorageManager.f.sol#L60)

src/core/flattened/LayerCakeStorageManager.f.sol#L59


 - [ ] ID-14
[LayerCakeStorageManager.constructor(address)._layerCakeContract](src/core/flattened/LayerCakeStorageManager.f.sol#L142) lacks a zero-check on :
		- [layerCakeContract = _layerCakeContract](src/core/flattened/LayerCakeStorageManager.f.sol#L143)

src/core/flattened/LayerCakeStorageManager.f.sol#L142


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-15
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L96) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L85)
	- [bp.startTime == 0](src/core/flattened/LayerCakeBandwidthManager.f.sol#L86)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78-L96


 - [ ] ID-16
[LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L58-L76) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L61)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCakeBandwidthManager.f.sol#L62)
	- [_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L64)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L65)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount,PBP3)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L69)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L58-L76


 - [ ] ID-17
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L98-L111) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L105)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L98-L111


 - [ ] ID-18
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L145-L150) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L147)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L145-L150


 - [ ] ID-19
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L113-L143) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == _invalidExecutionProofId,NB1)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L122)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L126)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L134)
	- [require(bool,string)(_initialNegation == bp.negated,NB5)](src/core/flattened/LayerCakeBandwidthManager.f.sol#L138)

src/core/flattened/LayerCakeBandwidthManager.f.sol#L113-L143


 - [ ] ID-20
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1142-L1147) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1143)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1142-L1147


 - [ ] ID-21
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L892)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-22
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L562-L585) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime() && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCake.f.sol#L579-L583)

src/core/flattened/LayerCake.f.sol#L562-L585


 - [ ] ID-23
[LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)](src/core/flattened/LayerCake.f.sol#L410-L415) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.currentTotalBandwidth > 0,UBF1)](src/core/flattened/LayerCake.f.sol#L412)

src/core/flattened/LayerCake.f.sol#L410-L415


 - [ ] ID-24
[LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)](src/core/flattened/LayerCake.f.sol#L323-L341) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > bandwidthPeriod,PBP1)](src/core/flattened/LayerCake.f.sol#L326)
	- [(block.timestamp - bp.startTime) / bandwidthPeriod > (bp.timeLastActive - bp.startTime) / bandwidthPeriod](src/core/flattened/LayerCake.f.sol#L327)
	- [_amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L329)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > reorgAssumption,PBP2)](src/core/flattened/LayerCake.f.sol#L330)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= _amount,PBP3)](src/core/flattened/LayerCake.f.sol#L334)

src/core/flattened/LayerCake.f.sol#L323-L341


 - [ ] ID-25
[LayerCakeBandwidthManager.subtractBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L363-L376) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_bandwidthAmount <= bp.currentTotalBandwidth,SB1)](src/core/flattened/LayerCake.f.sol#L370)

src/core/flattened/LayerCake.f.sol#L363-L376


 - [ ] ID-26
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L789-L794) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= _executionTime,IF1)](src/core/flattened/LayerCake.f.sol#L790)

src/core/flattened/LayerCake.f.sol#L789-L794


 - [ ] ID-27
[LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L874-L888) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L875)
	- [require(bool,string)(_operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L876)
	- [require(bool,string)(_operations.amount >= 2 * _operations.fee,SO3)](src/core/flattened/LayerCake.f.sol#L878)
	- [require(bool,string)(_operations.amount >= _operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L880)
	- [require(bool,string)(! storageManager.getExecutionIdStored(_operations.executionTime,executionId),SO6)](src/core/flattened/LayerCake.f.sol#L885)

src/core/flattened/LayerCake.f.sol#L874-L888


 - [ ] ID-28
[LayerCakeBandwidthManager.addBandwidth(address,uint256)](src/core/flattened/LayerCake.f.sol#L343-L361) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated,AB1)](src/core/flattened/LayerCake.f.sol#L350)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L351)

src/core/flattened/LayerCake.f.sol#L343-L361


 - [ ] ID-29
[LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L378-L408) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == _invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L387)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L391)
	- [require(bool,string)(_depositedAmount - _fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L399)
	- [require(bool,string)(_initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L403)

src/core/flattened/LayerCake.f.sol#L378-L408


 - [ ] ID-30
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L547-L560) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCake.f.sol#L555)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCake.f.sol#L557)

src/core/flattened/LayerCake.f.sol#L547-L560


 - [ ] ID-31
[LayerCakeStorageManager._checkCreateStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L177-L200) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(_timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime() && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),CCSS2)](src/core/flattened/LayerCakeStorageManager.f.sol#L194-L198)

src/core/flattened/LayerCakeStorageManager.f.sol#L177-L200


 - [ ] ID-32
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS,GSS1)](src/core/flattened/LayerCakeStorageManager.f.sol#L170)
	- [thisStorageEpoch > storageEpoch](src/core/flattened/LayerCakeStorageManager.f.sol#L172)

src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-33
Pragma version[^0.8.13](src/core/flattened/LayerCakeBandwidthManager.f.sol#L5) allows old versions

src/core/flattened/LayerCakeBandwidthManager.f.sol#L5


 - [ ] ID-34
Pragma version[^0.8.13](src/core/flattened/LayerCakeStorageSlot.f.sol#L5) allows old versions

src/core/flattened/LayerCakeStorageSlot.f.sol#L5


 - [ ] ID-35
Pragma version[^0.8.13](src/core/flattened/LayerCakeExecutionProof.f.sol#L5) allows old versions

src/core/flattened/LayerCakeExecutionProof.f.sol#L5


 - [ ] ID-36
Pragma version[^0.8.13](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) allows old versions

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-37
Pragma version[^0.8.13](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) allows old versions

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-38
Pragma version[^0.8.13](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) allows old versions

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-39
Pragma version[^0.8.13](src/core/flattened/LayerCakeDeployTools.f.sol#L5) allows old versions

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-40
Pragma version[^0.8.13](src/core/flattened/LayerCakeCalldataInterface.f.sol#L5) allows old versions

src/core/flattened/LayerCakeCalldataInterface.f.sol#L5


 - [ ] ID-41
Pragma version[^0.8.13](src/core/flattened/LayerCake.f.sol#L5) allows old versions

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-42
Pragma version[^0.8.13](src/core/flattened/LayerCakeStorageManager.f.sol#L5) allows old versions

src/core/flattened/LayerCakeStorageManager.f.sol#L5


 - [ ] ID-43
Pragma version[^0.8.13](src/core/flattened/LayerCakeTools.f.sol#L5) allows old versions

src/core/flattened/LayerCakeTools.f.sol#L5


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-44
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthAmount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L98) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L98


 - [ ] ID-45
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._bandwidthProvider](src/core/flattened/LayerCakeBandwidthManager.f.sol#L58) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L58


 - [ ] ID-46
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._addToUsedBandwidth](src/core/flattened/LayerCakeBandwidthManager.f.sol#L58) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L58


 - [ ] ID-47
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._fee](src/core/flattened/LayerCakeBandwidthManager.f.sol#L116) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L116


 - [ ] ID-48
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._amount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L58) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L58


 - [ ] ID-49
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._initialNegation](src/core/flattened/LayerCakeBandwidthManager.f.sol#L117) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L117


 - [ ] ID-50
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._depositedAmount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L115) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L115


 - [ ] ID-51
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._amount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L54) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L54


 - [ ] ID-52
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._invalidExecutionProofId](src/core/flattened/LayerCakeBandwidthManager.f.sol#L118) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L118


 - [ ] ID-53
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._bandwidthProvider](src/core/flattened/LayerCakeBandwidthManager.f.sol#L114) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L114


 - [ ] ID-54
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthAmount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78


 - [ ] ID-55
Parameter [LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)._amount](src/core/flattened/LayerCakeBandwidthManager.f.sol#L145) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L145


 - [ ] ID-56
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCakeBandwidthManager.f.sol#L78) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L78


 - [ ] ID-57
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCakeBandwidthManager.f.sol#L54) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L54


 - [ ] ID-58
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCakeBandwidthManager.f.sol#L98) is not in mixedCase

src/core/flattened/LayerCakeBandwidthManager.f.sol#L98


 - [ ] ID-59
Parameter [LayerCakeStorageSlot.getExecutionIdStored(bytes32)._executionId](src/core/flattened/LayerCakeStorageSlot.f.sol#L75) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L75


 - [ ] ID-60
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCakeStorageSlot.f.sol#L93) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L93


 - [ ] ID-61
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._sender](src/core/flattened/LayerCakeStorageSlot.f.sol#L87) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L87


 - [ ] ID-62
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._executionId](src/core/flattened/LayerCakeStorageSlot.f.sol#L122) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L122


 - [ ] ID-63
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._amount](src/core/flattened/LayerCakeStorageSlot.f.sol#L87) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L87


 - [ ] ID-64
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._executionId](src/core/flattened/LayerCakeStorageSlot.f.sol#L87) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L87


 - [ ] ID-65
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/flattened/LayerCakeStorageSlot.f.sol#L93) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L93


 - [ ] ID-66
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCakeStorageSlot.f.sol#L93) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L93


 - [ ] ID-67
Parameter [LayerCakeStorageSlot.getExecutionIdPrepared(bytes32)._executionId](src/core/flattened/LayerCakeStorageSlot.f.sol#L79) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L79


 - [ ] ID-68
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._amount](src/core/flattened/LayerCakeStorageSlot.f.sol#L122) is not in mixedCase

src/core/flattened/LayerCakeStorageSlot.f.sol#L122


 - [ ] ID-69
Parameter [LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719) is not in mixedCase

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719


 - [ ] ID-70
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1010) is not in mixedCase

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1010


 - [ ] ID-71
Variable [LayerCakeDestinationDeploy._deposits](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1688) is not in mixedCase

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1688


 - [ ] ID-72
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._verificationHash](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1010) is not in mixedCase

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1010


 - [ ] ID-73
Variable [LayerCakeOriginDeploy._deposits](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1104) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1104


 - [ ] ID-74
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1087) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1087


 - [ ] ID-75
Parameter [LayerCakeOriginDeploy.deposit(uint256)._amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119


 - [ ] ID-76
Parameter [LayerCakeOriginDeploy.withdraw(uint256)._amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131


 - [ ] ID-77
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._verificationHash](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1087) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1087


 - [ ] ID-78
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._balanceChange](src/core/flattened/LayerCakeDeployTools.f.sol#L16) is not in mixedCase

src/core/flattened/LayerCakeDeployTools.f.sol#L16


 - [ ] ID-79
Parameter [LayerCakeDeployTools.getVerificationHashUpdate(bytes32,LayerCakeDeployTools.BalanceChange)._verificationHash](src/core/flattened/LayerCakeDeployTools.f.sol#L16) is not in mixedCase

src/core/flattened/LayerCakeDeployTools.f.sol#L16


 - [ ] ID-80
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._callData](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90) is not in mixedCase

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90


 - [ ] ID-81
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90) is not in mixedCase

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90


 - [ ] ID-82
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthAmount](src/core/flattened/LayerCake.f.sol#L363) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L363


 - [ ] ID-83
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._callData](src/core/flattened/LayerCake.f.sol#L645) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L645


 - [ ] ID-84
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._destinationChainId](src/core/flattened/LayerCake.f.sol#L236) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L236


 - [ ] ID-85
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._hash](src/core/flattened/LayerCake.f.sol#L261) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L261


 - [ ] ID-86
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._executionId](src/core/flattened/LayerCake.f.sol#L789) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L789


 - [ ] ID-87
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L323) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L323


 - [ ] ID-88
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionId](src/core/flattened/LayerCake.f.sol#L615) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L615


 - [ ] ID-89
Parameter [LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)._operations](src/core/flattened/LayerCake.f.sol#L728) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L728


 - [ ] ID-90
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionTime](src/core/flattened/LayerCake.f.sol#L591) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L591


 - [ ] ID-91
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._operations](src/core/flattened/LayerCake.f.sol#L245) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L245


 - [ ] ID-92
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._addToUsedBandwidth](src/core/flattened/LayerCake.f.sol#L323) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L323


 - [ ] ID-93
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._fee](src/core/flattened/LayerCake.f.sol#L381) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L381


 - [ ] ID-94
Parameter [LayerCakeBandwidthManager.proveBandwidthPrivate(address,uint256,bool)._amount](src/core/flattened/LayerCake.f.sol#L323) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L323


 - [ ] ID-95
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionId](src/core/flattened/LayerCake.f.sol#L601) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L601


 - [ ] ID-96
Parameter [LayerCakeStorageSlot.getExecutionIdStored(bytes32)._executionId](src/core/flattened/LayerCake.f.sol#L463) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L463


 - [ ] ID-97
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/flattened/LayerCake.f.sol#L624) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L624


 - [ ] ID-98
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._addedFee](src/core/flattened/LayerCake.f.sol#L789) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L789


 - [ ] ID-99
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCake.f.sol#L481) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L481


 - [ ] ID-100
Parameter [LayerCake.addBandwidth(uint256)._bandwidthAmount](src/core/flattened/LayerCake.f.sol#L776) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L776


 - [ ] ID-101
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._initialNegation](src/core/flattened/LayerCake.f.sol#L382) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L382


 - [ ] ID-102
Parameter [LayerCake.subtractBandwidth(uint256)._bandwidthAmount](src/core/flattened/LayerCake.f.sol#L783) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L783


 - [ ] ID-103
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._sender](src/core/flattened/LayerCake.f.sol#L615) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L615


 - [ ] ID-104
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCake.f.sol#L624) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L624


 - [ ] ID-105
Parameter [LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)._operations](src/core/flattened/LayerCake.f.sol#L760) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L760


 - [ ] ID-106
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._sender](src/core/flattened/LayerCake.f.sol#L475) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L475


 - [ ] ID-107
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._depositedAmount](src/core/flattened/LayerCake.f.sol#L380) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L380


 - [ ] ID-108
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._originChainId](src/core/flattened/LayerCake.f.sol#L236) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L236


 - [ ] ID-109
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L715) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L715


 - [ ] ID-110
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._assetId](src/core/flattened/LayerCake.f.sol#L236) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L236


 - [ ] ID-111
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._executionId](src/core/flattened/LayerCake.f.sol#L510) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L510


 - [ ] ID-112
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._contractId](src/core/flattened/LayerCake.f.sol#L236) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L236


 - [ ] ID-113
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._amount](src/core/flattened/LayerCake.f.sol#L319) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L319


 - [ ] ID-114
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._amount](src/core/flattened/LayerCake.f.sol#L475) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L475


 - [ ] ID-115
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionTime](src/core/flattened/LayerCake.f.sol#L601) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L601


 - [ ] ID-116
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionTime](src/core/flattened/LayerCake.f.sol#L615) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L615


 - [ ] ID-117
Parameter [LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._negationExecutionProof](src/core/flattened/LayerCake.f.sol#L847) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L847


 - [ ] ID-118
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L261) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L261


 - [ ] ID-119
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCake.f.sol#L716) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L716


 - [ ] ID-120
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._executionId](src/core/flattened/LayerCake.f.sol#L475) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L475


 - [ ] ID-121
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._amount](src/core/flattened/LayerCake.f.sol#L634) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L634


 - [ ] ID-122
Parameter [LayerCake.executeCancelStandardOperations(LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L820) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L820


 - [ ] ID-123
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._amount](src/core/flattened/LayerCake.f.sol#L615) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L615


 - [ ] ID-124
Parameter [LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L800) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L800


 - [ ] ID-125
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._invalidExecutionProofId](src/core/flattened/LayerCake.f.sol#L383) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L383


 - [ ] ID-126
Parameter [LayerCakeBandwidthManager.negateBp(address,uint256,uint256,bool,bytes32)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L379) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L379


 - [ ] ID-127
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthAmount](src/core/flattened/LayerCake.f.sol#L343) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L343


 - [ ] ID-128
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionId](src/core/flattened/LayerCake.f.sol#L634) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L634


 - [ ] ID-129
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/flattened/LayerCake.f.sol#L481) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L481


 - [ ] ID-130
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L481) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L481


 - [ ] ID-131
Parameter [LayerCakeBandwidthManager.updateBpSuggestedFee(uint256)._amount](src/core/flattened/LayerCake.f.sol#L410) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L410


 - [ ] ID-132
Parameter [LayerCakeStorageSlot.getExecutionIdPrepared(bytes32)._executionId](src/core/flattened/LayerCake.f.sol#L467) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L467


 - [ ] ID-133
Parameter [LayerCake.increaseFee(bytes32,uint256,uint256)._executionTime](src/core/flattened/LayerCake.f.sol#L789) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L789


 - [ ] ID-134
Parameter [LayerCakeBandwidthManager.addBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L343) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L343


 - [ ] ID-135
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionId](src/core/flattened/LayerCake.f.sol#L591) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L591


 - [ ] ID-136
Parameter [LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)._operations](src/core/flattened/LayerCake.f.sol#L744) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L744


 - [ ] ID-137
Parameter [LayerCakeTools.getInvalidExecutionProofId(LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/core/flattened/LayerCake.f.sol#L253) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L253


 - [ ] ID-138
Parameter [LayerCakeBandwidthManager.proveBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L319) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L319


 - [ ] ID-139
Parameter [LayerCakeBandwidthManager.subtractBandwidth(address,uint256)._bandwidthProvider](src/core/flattened/LayerCake.f.sol#L363) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L363


 - [ ] ID-140
Parameter [LayerCake.getExecutionValidity(address,bytes32,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L717) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L717


 - [ ] ID-141
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._pathwayId](src/core/flattened/LayerCake.f.sol#L245) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L245


 - [ ] ID-142
Parameter [LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/core/flattened/LayerCake.f.sol#L848) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L848


 - [ ] ID-143
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionTime](src/core/flattened/LayerCake.f.sol#L634) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L634


 - [ ] ID-144
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._amount](src/core/flattened/LayerCake.f.sol#L510) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L510


 - [ ] ID-145
Parameter [LayerCakeCalldataInterface.execute(address,bytes)._recipient](src/core/flattened/LayerCake.f.sol#L645) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L645


 - [ ] ID-146
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCake.f.sol#L624) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L624


 - [ ] ID-147
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L230) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L230


 - [ ] ID-148
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionTime](src/core/flattened/LayerCakeStorageManager.f.sol#L206) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L206


 - [ ] ID-149
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L216) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L216


 - [ ] ID-150
Parameter [LayerCakeStorageSlot.getExecutionIdStored(bytes32)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L78) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L78


 - [ ] ID-151
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/flattened/LayerCakeStorageManager.f.sol#L239) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L239


 - [ ] ID-152
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L96) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L96


 - [ ] ID-153
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._sender](src/core/flattened/LayerCakeStorageManager.f.sol#L230) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L230


 - [ ] ID-154
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L239) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L239


 - [ ] ID-155
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._sender](src/core/flattened/LayerCakeStorageManager.f.sol#L90) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L90


 - [ ] ID-156
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L125) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L125


 - [ ] ID-157
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._amount](src/core/flattened/LayerCakeStorageManager.f.sol#L90) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L90


 - [ ] ID-158
Parameter [LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)._executionTime](src/core/flattened/LayerCakeStorageManager.f.sol#L216) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L216


 - [ ] ID-159
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._executionTime](src/core/flattened/LayerCakeStorageManager.f.sol#L230) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L230


 - [ ] ID-160
Parameter [LayerCakeStorageSlot.storeExecutionId(bytes32,address,uint256)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L90) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L90


 - [ ] ID-161
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._amount](src/core/flattened/LayerCakeStorageManager.f.sol#L249) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L249


 - [ ] ID-162
Parameter [LayerCakeStorageManager.storeExecutionId(uint256,bytes32,address,uint256)._amount](src/core/flattened/LayerCakeStorageManager.f.sol#L230) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L230


 - [ ] ID-163
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L249) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L249


 - [ ] ID-164
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._preparer](src/core/flattened/LayerCakeStorageManager.f.sol#L96) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L96


 - [ ] ID-165
Parameter [LayerCakeStorageSlot.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCakeStorageManager.f.sol#L96) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L96


 - [ ] ID-166
Parameter [LayerCakeStorageSlot.getExecutionIdPrepared(bytes32)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L82) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L82


 - [ ] ID-167
Parameter [LayerCakeStorageManager.getExecutionIdStored(uint256,bytes32)._executionId](src/core/flattened/LayerCakeStorageManager.f.sol#L206) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L206


 - [ ] ID-168
Parameter [LayerCakeStorageManager.increaseFee(uint256,bytes32,uint256)._executionTime](src/core/flattened/LayerCakeStorageManager.f.sol#L249) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L249


 - [ ] ID-169
Parameter [LayerCakeStorageSlot.increaseFee(bytes32,uint256)._amount](src/core/flattened/LayerCakeStorageManager.f.sol#L125) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L125


 - [ ] ID-170
Parameter [LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCakeStorageManager.f.sol#L239) is not in mixedCase

src/core/flattened/LayerCakeStorageManager.f.sol#L239


 - [ ] ID-171
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._destinationChainId](src/core/flattened/LayerCakeTools.f.sol#L74) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L74


 - [ ] ID-172
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._hash](src/core/flattened/LayerCakeTools.f.sol#L99) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L99


 - [ ] ID-173
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._operations](src/core/flattened/LayerCakeTools.f.sol#L83) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L83


 - [ ] ID-174
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._originChainId](src/core/flattened/LayerCakeTools.f.sol#L74) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L74


 - [ ] ID-175
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._assetId](src/core/flattened/LayerCakeTools.f.sol#L74) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L74


 - [ ] ID-176
Parameter [LayerCakeTools.getPathwayId(uint256,uint256,uint256,uint256)._contractId](src/core/flattened/LayerCakeTools.f.sol#L74) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L74


 - [ ] ID-177
Parameter [LayerCakeTools.recoverSigner(bytes32,LayerCakeExecutionProof.ExecutionProof)._executionProof](src/core/flattened/LayerCakeTools.f.sol#L99) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L99


 - [ ] ID-178
Parameter [LayerCakeTools.getInvalidExecutionProofId(LayerCakeExecutionProof.ExecutionProof)._invalidExecutionProof](src/core/flattened/LayerCakeTools.f.sol#L91) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L91


 - [ ] ID-179
Parameter [LayerCakeTools.getExecutionId(bytes32,LayerCakeExecutionProof.Operations)._pathwayId](src/core/flattened/LayerCakeTools.f.sol#L83) is not in mixedCase

src/core/flattened/LayerCakeTools.f.sol#L83


## unchecked-transfer
Impact: High
Confidence: Medium
 - [ ] ID-180
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741) ignores return value by [destinationToken.transfer(msg.sender,currentBalance)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1740)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741


 - [ ] ID-181
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140) ignores return value by [originToken.transfer(msg.sender,_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1135)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140


 - [ ] ID-182
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1142-L1147) ignores return value by [originToken.transfer(layerCakeAddress,originToken.balanceOf(address(this)))](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1146)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1142-L1147


 - [ ] ID-183
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129) ignores return value by [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1121)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129


 - [ ] ID-184
[LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903) ignores return value by [token.transfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L899)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-185
[LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L776-L781) ignores return value by [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/flattened/LayerCake.f.sol#L778)

src/core/flattened/LayerCake.f.sol#L776-L781


 - [ ] ID-186
[LayerCake.increaseFee(bytes32,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L789-L794) ignores return value by [token.transferFrom(msg.sender,address(this),_addedFee)](src/core/flattened/LayerCake.f.sol#L791)

src/core/flattened/LayerCake.f.sol#L789-L794


 - [ ] ID-187
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L728-L742) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/flattened/LayerCake.f.sol#L739)

src/core/flattened/LayerCake.f.sol#L728-L742


 - [ ] ID-188
[LayerCake.executeNegationOperations(LayerCakeExecutionProof.ExecutionProof,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L846-L868) ignores return value by [token.transfer(_negationExecutionProof.operations.recipient,_negationExecutionProof.operations.amount - _negationExecutionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L864-L867)

src/core/flattened/LayerCake.f.sol#L846-L868


 - [ ] ID-189
[LayerCake.storeStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L728-L742) ignores return value by [token.transferFrom(msg.sender,forwardedFeeRecipient,forwardedFee)](src/core/flattened/LayerCake.f.sol#L735)

src/core/flattened/LayerCake.f.sol#L728-L742


 - [ ] ID-190
[LayerCake.executeStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L800-L818) ignores return value by [token.transfer(_executionProof.operations.recipient,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L808-L810)

src/core/flattened/LayerCake.f.sol#L800-L818


 - [ ] ID-191
[LayerCake.subtractBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L783-L787) ignores return value by [token.transfer(msg.sender,withdrawnAmount)](src/core/flattened/LayerCake.f.sol#L785)

src/core/flattened/LayerCake.f.sol#L783-L787


 - [ ] ID-192
[LayerCake.executeCancelStandardOperations(LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L820-L844) ignores return value by [token.transfer(_executionProof.operations.sender,_executionProof.operations.amount - _executionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L841-L843)

src/core/flattened/LayerCake.f.sol#L820-L844


 - [ ] ID-193
[LayerCake.storeNegationOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L760-L774) ignores return value by [token.transferFrom(msg.sender,address(this),_operations.amount)](src/core/flattened/LayerCake.f.sol#L764)

src/core/flattened/LayerCake.f.sol#L760-L774


## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-194
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance + _balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1723)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-195
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741) ignores return value by [EnumerableMap.remove(_deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1739)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1736-L1741


 - [ ] ID-196
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,_balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1722)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-197
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734) ignores return value by [EnumerableMap.set(_deposits,_balanceChange.sender,currentBalance_scope_0 - _balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1726)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1719-L1734


 - [ ] ID-198
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance + _amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1124)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129


 - [ ] ID-199
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140) ignores return value by [EnumerableMap.set(_deposits,msg.sender,currentBalance - _amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1134)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140


 - [ ] ID-200
[LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129) ignores return value by [(currentBalance) = EnumerableMap.tryGet(_deposits,msg.sender)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1123)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129


 - [ ] ID-201
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L624-L632) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]).prepareExecutionId(_executionId,_preparer,_executionProof)](src/core/flattened/LayerCake.f.sol#L629-L631)

src/core/flattened/LayerCake.f.sol#L624-L632


 - [ ] ID-202
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCake.f.sol#L601-L609) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId)](src/core/flattened/LayerCake.f.sol#L608)

src/core/flattened/LayerCake.f.sol#L601-L609


 - [ ] ID-203
[LayerCake.cancelStandardOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L744-L758) ignores return value by [(executionPrepared) = storageManager.getExecutionIdPrepared(_operations.executionTime,executionId)](src/core/flattened/LayerCake.f.sol#L748)

src/core/flattened/LayerCake.f.sol#L744-L758


 - [ ] ID-204
[LayerCakeStorageManager.prepareExecutionId(bytes32,address,LayerCakeExecutionProof.ExecutionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L239-L247) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]).prepareExecutionId(_executionId,_preparer,_executionProof)](src/core/flattened/LayerCakeStorageManager.f.sol#L244-L246)

src/core/flattened/LayerCakeStorageManager.f.sol#L239-L247


 - [ ] ID-205
[LayerCakeStorageManager.getExecutionIdPrepared(uint256,bytes32)](src/core/flattened/LayerCakeStorageManager.f.sol#L216-L224) ignores return value by [LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId)](src/core/flattened/LayerCakeStorageManager.f.sol#L223)

src/core/flattened/LayerCakeStorageManager.f.sol#L216-L224


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-206
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L990-L992)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-207
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L896-L898)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-208
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L312-L314)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-209
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L386-L388)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-210
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L708-L710)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-211
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L460-L462)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-212
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L802-L804)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-213
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1067-L1069)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-214
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L389-L391)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-215
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L463-L465)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-216
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L973-L975)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-217
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L879-L881)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-218
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-219
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L537-L539)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-220
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L99) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeCalldataInterface.f.sol#L94-L96)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L99


 - [ ] ID-221
[LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L645-L654) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L649-L651)

src/core/flattened/LayerCake.f.sol#L645-L654


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-222
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L307-L317


 - [ ] ID-223
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L576-L579


 - [ ] ID-224
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L751-L753


 - [ ] ID-225
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L617-L619


 - [ ] ID-226
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L281-L283


 - [ ] ID-227
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L297


 - [ ] ID-228
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L691-L693


 - [ ] ID-229
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L916-L918


 - [ ] ID-230
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L215-L217


 - [ ] ID-231
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L229-L231


 - [ ] ID-232
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L415-L417


 - [ ] ID-233
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L925-L927


 - [ ] ID-234
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L838-L840


 - [ ] ID-235
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L679-L682


 - [ ] ID-236
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L773-L776


 - [ ] ID-237
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847


 - [ ] ID-238
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L703-L713


 - [ ] ID-239
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L891-L901


 - [ ] ID-240
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L634-L636


 - [ ] ID-241
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L961-L964


 - [ ] ID-242
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L422-L424


 - [ ] ID-243
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L381-L391


 - [ ] ID-244
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L341-L343


 - [ ] ID-245
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1592-L1597


 - [ ] ID-246
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L650-L652


 - [ ] ID-247
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L932-L934


 - [ ] ID-248
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L369-L371


 - [ ] ID-249
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L348-L350


 - [ ] ID-250
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L952-L955


 - [ ] ID-251
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L355-L357


 - [ ] ID-252
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L241-L243


 - [ ] ID-253
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L737-L739


 - [ ] ID-254
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L455-L465


 - [ ] ID-255
[Context._msgData()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1140-L1142


 - [ ] ID-256
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L744-L746


 - [ ] ID-257
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L562-L564


 - [ ] ID-258
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L657-L659


 - [ ] ID-259
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L670-L673


 - [ ] ID-260
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L429-L431


 - [ ] ID-261
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787


 - [ ] ID-262
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L728-L730


 - [ ] ID-263
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L443-L445


 - [ ] ID-264
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L797-L807


 - [ ] ID-265
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L331-L333


 - [ ] ID-266
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L764-L767


 - [ ] ID-267
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L939-L941


 - [ ] ID-268
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L643-L645


 - [ ] ID-269
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L84-L86


 - [ ] ID-270
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L973-L975


 - [ ] ID-271
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L405-L407


 - [ ] ID-272
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L858-L861


 - [ ] ID-273
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L985-L995


 - [ ] ID-274
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L384-L394


 - [ ] ID-275
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L653-L656


 - [ ] ID-276
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L828-L830


 - [ ] ID-277
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L694-L696


 - [ ] ID-278
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L358-L360


 - [ ] ID-279
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L372-L374


 - [ ] ID-280
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L768-L770


 - [ ] ID-281
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L993-L995


 - [ ] ID-282
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L292-L294


 - [ ] ID-283
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L306-L308


 - [ ] ID-284
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L492-L494


 - [ ] ID-285
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1002-L1004


 - [ ] ID-286
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L915-L917


 - [ ] ID-287
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L756-L759


 - [ ] ID-288
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L850-L853


 - [ ] ID-289
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L922-L924


 - [ ] ID-290
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L780-L790


 - [ ] ID-291
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L968-L978


 - [ ] ID-292
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L711-L713


 - [ ] ID-293
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1038-L1041


 - [ ] ID-294
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L499-L501


 - [ ] ID-295
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L458-L468


 - [ ] ID-296
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L418-L420


 - [ ] ID-297
[EnumerableMap.remove(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L908-L910


 - [ ] ID-298
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L727-L729


 - [ ] ID-299
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1009-L1011


 - [ ] ID-300
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L446-L448


 - [ ] ID-301
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L425-L427


 - [ ] ID-302
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1029-L1032


 - [ ] ID-303
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L432-L434


 - [ ] ID-304
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L318-L320


 - [ ] ID-305
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L814-L816


 - [ ] ID-306
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L532-L542


 - [ ] ID-307
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L821-L823


 - [ ] ID-308
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L639-L641


 - [ ] ID-309
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L734-L736


 - [ ] ID-310
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L747-L750


 - [ ] ID-311
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L506-L508


 - [ ] ID-312
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L862-L864


 - [ ] ID-313
[EnumerableMap.remove(EnumerableMap.Bytes32ToBytes32Map,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L624-L627


 - [ ] ID-314
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L805-L807


 - [ ] ID-315
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L520-L522


 - [ ] ID-316
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L874-L884


 - [ ] ID-317
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L408-L410


 - [ ] ID-318
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L841-L844


 - [ ] ID-319
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1016-L1018


 - [ ] ID-320
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L720-L722


 - [ ] ID-321
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86


 - [ ] ID-322
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1050-L1052


 - [ ] ID-323
[EnumerableSet._remove(EnumerableSet.Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L248-L280


 - [ ] ID-324
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L482-L484


 - [ ] ID-325
[EnumerableSet.remove(EnumerableSet.Bytes32Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L344-L346


 - [ ] ID-326
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L935-L938


 - [ ] ID-327
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1062-L1072


 - [ ] ID-328
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582


 - [ ] ID-329
[Context._msgData()](src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127


 - [ ] ID-330
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeCalldataInterface.f.sol#L84-L86


 - [ ] ID-331
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCake.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L84-L86


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-332
[LayerCakeTransportedToken.tokenPrefix](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1668) should be constant 

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1668


 - [ ] ID-333
[LayerCakeTransportedToken.tokenPrefix](src/core/flattened/LayerCakeTransportedToken.f.sol#L653) should be constant 

src/core/flattened/LayerCakeTransportedToken.f.sol#L653


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-334
[LayerCakeDestinationDeploy.destinationToken](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1686) should be immutable 

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1686


 - [ ] ID-335
[LayerCakeOriginDeploy.originToken](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1099) should be immutable 

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1099


## reentrancy-benign
Impact: Low
Confidence: Medium
 - [ ] ID-336
Reentrancy in [LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140):
	External calls:
	- [originToken.transfer(msg.sender,_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1135)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount - _amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1138)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1137)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1131-L1140


 - [ ] ID-337
Reentrancy in [LayerCakeOriginDeploy.deposit(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129):
	External calls:
	- [originToken.transferFrom(msg.sender,address(this),_amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1121)
	State variables written after the call(s):
	- [depositedAmount = depositedAmount + _amount](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1127)
	- [verificationHash = getVerificationHashUpdate(verificationHash,balanceChange)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1126)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1119-L1129


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-338
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L99):
	- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCakeCalldataInterface.f.sol#L91)

src/core/flattened/LayerCakeCalldataInterface.f.sol#L90-L99


 - [ ] ID-339
Low level call in [LayerCakeCalldataInterface.execute(address,bytes)](src/core/flattened/LayerCake.f.sol#L645-L654):
	- [(success,result) = address(_recipient).call(_callData)](src/core/flattened/LayerCake.f.sol#L646)

src/core/flattened/LayerCake.f.sol#L645-L654


## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-340
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCake.f.sol#L547-L560) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCake.f.sol#L556)" 

src/core/flattened/LayerCake.f.sol#L547-L560


 - [ ] ID-341
[LayerCakeStorageManager._getStorageSlot(uint256)](src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175) uses a weak PRNG: "[thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS](src/core/flattened/LayerCakeStorageManager.f.sol#L171)" 

src/core/flattened/LayerCakeStorageManager.f.sol#L162-L175


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-342
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


 - [ ] ID-343
Reentrancy in [LayerCake._executeOperations(LayerCakeExecutionProof.ExecutionProof,bool)](src/core/flattened/LayerCake.f.sol#L890-L903):
	External calls:
	- [(partialFee,bandwidthUsed,executionPrepared) = storageManager.prepareExecutionId(executionId,msg.sender,_executionProof)](src/core/flattened/LayerCake.f.sol#L894-L895)
	- [bandwidthManager.proveBandwidth(msg.sender,bandwidthUsed)](src/core/flattened/LayerCake.f.sol#L898)
	- [token.transfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L899)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,_executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L901)

src/core/flattened/LayerCake.f.sol#L890-L903


 - [ ] ID-344
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L776-L781):
	External calls:
	- [depositedAmount = bandwidthManager.addBandwidth(msg.sender,_bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L777)
	- [token.transferFrom(msg.sender,address(this),depositedAmount)](src/core/flattened/LayerCake.f.sol#L778)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,_bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L780)

src/core/flattened/LayerCake.f.sol#L776-L781


 - [ ] ID-345
Reentrancy in [LayerCake._storeOperations(LayerCakeExecutionProof.Operations)](src/core/flattened/LayerCake.f.sol#L874-L888):
	External calls:
	- [storageManager.storeExecutionId(_operations.executionTime,executionId,_operations.sender,_operations.amount)](src/core/flattened/LayerCake.f.sol#L886)
	Event emitted after the call(s):
	- [OperationsStored(executionId,_operations)](src/core/flattened/LayerCake.f.sol#L887)

src/core/flattened/LayerCake.f.sol#L874-L888


