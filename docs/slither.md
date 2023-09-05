Summary
 - [incorrect-equality](#incorrect-equality) (8 results) (Medium)
 - [unused-return](#unused-return) (7 results) (Medium)
 - [assembly](#assembly) (17 results) (Informational)
 - [dead-code](#dead-code) (152 results) (Informational)
 - [solc-version](#solc-version) (12 results) (Informational)
 - [low-level-calls](#low-level-calls) (15 results) (Informational)
 - [naming-convention](#naming-convention) (3 results) (Informational)
 - [timestamp](#timestamp) (6 results) (Low)
 - [reentrancy-benign](#reentrancy-benign) (3 results) (Low)
 - [reentrancy-events](#reentrancy-events) (6 results) (Low)
## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-0
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(address(this)) == depositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1566)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580


 - [ ] ID-1
[LayerCakeDestinationDeploy.constructor(address,address,bytes32,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1536-L1548) uses a dangerous strict equality:
	- [require(bool)(destinationToken.balanceOf(cLayerCakeAddress) == cDepositCap - cDepositedAmount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1546)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1536-L1548


 - [ ] ID-2
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses a dangerous strict equality:
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L909)

src/core/flattened/LayerCake.f.sol#L887-L918


 - [ ] ID-3
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses a dangerous strict equality:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L896)

src/core/flattened/LayerCake.f.sol#L887-L918


 - [ ] ID-4
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses a dangerous strict equality:
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L913)

src/core/flattened/LayerCake.f.sol#L887-L918


 - [ ] ID-5
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses a dangerous strict equality:
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth / params.maxBandwidthMultiple,NB3)](src/core/flattened/LayerCake.f.sol#L903)

src/core/flattened/LayerCake.f.sol#L887-L918


 - [ ] ID-6
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses a dangerous strict equality:
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L900)

src/core/flattened/LayerCake.f.sol#L887-L918


 - [ ] ID-7
[LayerCake._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L844-L885) uses a dangerous strict equality:
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L866)

src/core/flattened/LayerCake.f.sol#L844-L885


## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-8
[LayerCakeDestinationDeploy.withdraw()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1582-L1587) ignores return value by [EnumerableMap.remove(deposits,msg.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1585)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1582-L1587


 - [ ] ID-9
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance + balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1569)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580


 - [ ] ID-10
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580) ignores return value by [EnumerableMap.set(deposits,balanceChange.sender,currentBalance_scope_0 - balanceChange.amount)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1572)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580


 - [ ] ID-11
[LayerCakeDestinationDeploy.setBalanceChange(LayerCakeDeployTools.BalanceChange)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,balanceChange.sender)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1568)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1565-L1580


 - [ ] ID-12
[LayerCakeOriginDeploy.deposit(uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1549-L1559) ignores return value by [EnumerableMap.set(deposits,withdrawalAddress,currentBalance + amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1552)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1549-L1559


 - [ ] ID-13
[LayerCakeOriginDeploy.withdraw(uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1561-L1570) ignores return value by [EnumerableMap.set(deposits,msg.sender,currentBalance - amount)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1564)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1561-L1570


 - [ ] ID-14
[LayerCakeOriginDeploy.deposit(uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1549-L1559) ignores return value by [(currentBalance) = EnumerableMap.tryGet(deposits,withdrawalAddress)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1551)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1549-L1559


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-15
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L885-L895) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L890-L892)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L885-L895


 - [ ] ID-16
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1489-L1499) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1494-L1496)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1489-L1499


 - [ ] ID-17
[Address._revert(bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L363-L376) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L368-L371)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L363-L376


 - [ ] ID-18
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1301-L1311) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1306-L1308)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1301-L1311


 - [ ] ID-19
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1207-L1217) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1212-L1214)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1207-L1217


 - [ ] ID-20
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1395-L1405) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1400-L1402)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1395-L1405


 - [ ] ID-21
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L811-L821) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L816-L818)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L811-L821


 - [ ] ID-22
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L959-L969) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L964-L966)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L959-L969


 - [ ] ID-23
[Address._revert(bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L445-L458) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L450-L453)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L445-L458


 - [ ] ID-24
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L959-L969) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L964-L966)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L959-L969


 - [ ] ID-25
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1489-L1499) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1494-L1496)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1489-L1499


 - [ ] ID-26
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1301-L1311) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1306-L1308)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1301-L1311


 - [ ] ID-27
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1207-L1217) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1212-L1214)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1207-L1217


 - [ ] ID-28
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L885-L895) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L890-L892)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L885-L895


 - [ ] ID-29
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L811-L821) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L816-L818)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L811-L821


 - [ ] ID-30
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1395-L1405) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1400-L1402)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1395-L1405


 - [ ] ID-31
[Address._revert(bytes,function())](src/core/flattened/LayerCake.f.sol#L363-L376) uses assembly
	- [INLINE ASM](src/core/flattened/LayerCake.f.sol#L368-L371)

src/core/flattened/LayerCake.f.sol#L363-L376


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-32
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L811-L821) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L811-L821


 - [ ] ID-33
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1080-L1083) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1080-L1083


 - [ ] ID-34
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1255-L1257) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1255-L1257


 - [ ] ID-35
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1121-L1123) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1121-L1123


 - [ ] ID-36
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L785-L787


 - [ ] ID-37
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L799-L801) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L799-L801


 - [ ] ID-38
[Address.sendValue(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L181-L190) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L181-L190


 - [ ] ID-39
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1195-L1197) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1195-L1197


 - [ ] ID-40
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1420-L1422) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1420-L1422


 - [ ] ID-41
[Address.functionCallWithValue(address,bytes,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L237-L239) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L237-L239


 - [ ] ID-42
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L719-L721) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L719-L721


 - [ ] ID-43
[Address.verifyCallResult(bool,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L344-L354) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L344-L354


 - [ ] ID-44
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L733-L735) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L733-L735


 - [ ] ID-45
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L919-L921) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L919-L921


 - [ ] ID-46
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1429-L1431) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1429-L1431


 - [ ] ID-47
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1342-L1344) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1342-L1344


 - [ ] ID-48
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1183-L1186) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1183-L1186


 - [ ] ID-49
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1277-L1280) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1277-L1280


 - [ ] ID-50
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1349-L1351) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1349-L1351


 - [ ] ID-51
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1207-L1217) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1207-L1217


 - [ ] ID-52
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1395-L1405) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1395-L1405


 - [ ] ID-53
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1138-L1140) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1138-L1140


 - [ ] ID-54
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1465-L1468) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1465-L1468


 - [ ] ID-55
[Address.functionDelegateCall(address,bytes)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L287-L289) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L287-L289


 - [ ] ID-56
[SafeERC20.safeIncreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L421-L424) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L421-L424


 - [ ] ID-57
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L926-L928) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L926-L928


 - [ ] ID-58
[SafeERC20.safePermit(IERC20Permit,address,address,uint256,uint256,uint8,bytes32,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L458-L474) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L458-L474


 - [ ] ID-59
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L885-L895) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L885-L895


 - [ ] ID-60
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L845-L847


 - [ ] ID-61
[Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L302) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L302


 - [ ] ID-62
[SafeERC20.safeTransferFrom(IERC20,address,address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L413-L415) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L413-L415


 - [ ] ID-63
[Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L281) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L281


 - [ ] ID-64
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1154-L1156) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1154-L1156


 - [ ] ID-65
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1436-L1438) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1436-L1438


 - [ ] ID-66
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L873-L875) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L873-L875


 - [ ] ID-67
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L852-L854) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L852-L854


 - [ ] ID-68
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1456-L1459) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1456-L1459


 - [ ] ID-69
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L859-L861) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L859-L861


 - [ ] ID-70
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L745-L747) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L745-L747


 - [ ] ID-71
[Address.functionCall(address,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L220-L226) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L220-L226


 - [ ] ID-72
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1241-L1243) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1241-L1243


 - [ ] ID-73
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L959-L969) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L959-L969


 - [ ] ID-74
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1248-L1250) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1248-L1250


 - [ ] ID-75
[Address.functionStaticCall(address,bytes)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L266-L268) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L266-L268


 - [ ] ID-76
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1066-L1068) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1066-L1068


 - [ ] ID-77
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1161-L1163) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1161-L1163


 - [ ] ID-78
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1174-L1177) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1174-L1177


 - [ ] ID-79
[SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L501-L508) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L501-L508


 - [ ] ID-80
[Address.defaultRevert()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L359-L361) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L359-L361


 - [ ] ID-81
[SafeERC20.forceApprove(IERC20,address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L445-L452) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L445-L452


 - [ ] ID-82
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L933-L935) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L933-L935


 - [ ] ID-83
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1289-L1291) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1289-L1291


 - [ ] ID-84
[SafeERC20.safeDecreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L430-L438) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L430-L438


 - [ ] ID-85
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1232-L1234) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1232-L1234


 - [ ] ID-86
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L947-L949) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L947-L949


 - [ ] ID-87
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1301-L1311) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1301-L1311


 - [ ] ID-88
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L835-L837) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L835-L837


 - [ ] ID-89
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1268-L1271) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1268-L1271


 - [ ] ID-90
[Address.verifyCallResult(bool,bytes)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L332-L334) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L332-L334


 - [ ] ID-91
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1443-L1445) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1443-L1445


 - [ ] ID-92
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1147-L1149) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1147-L1149


 - [ ] ID-93
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L588-L590) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L588-L590


 - [ ] ID-94
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1477-L1479) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1477-L1479


 - [ ] ID-95
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L909-L911) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L909-L911


 - [ ] ID-96
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1362-L1365) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1362-L1365


 - [ ] ID-97
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1489-L1499) is never used and should be removed

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L1489-L1499


 - [ ] ID-98
[EnumerableSet.values(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L811-L821) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L811-L821


 - [ ] ID-99
[EnumerableMap.at(EnumerableMap.Bytes32ToBytes32Map,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1080-L1083) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1080-L1083


 - [ ] ID-100
[EnumerableMap.length(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1255-L1257) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1255-L1257


 - [ ] ID-101
[EnumerableMap.keys(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1121-L1123) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1121-L1123


 - [ ] ID-102
[EnumerableSet.length(EnumerableSet.Bytes32Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L785-L787


 - [ ] ID-103
[EnumerableSet.at(EnumerableSet.Bytes32Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L799-L801) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L799-L801


 - [ ] ID-104
[Address.sendValue(address,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L263-L272) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L263-L272


 - [ ] ID-105
[EnumerableMap.get(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1197) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1195-L1197


 - [ ] ID-106
[EnumerableMap.set(EnumerableMap.Bytes32ToUintMap,bytes32,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1420-L1422) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1420-L1422


 - [ ] ID-107
[Address.functionCallWithValue(address,bytes,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L319-L321) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L319-L321


 - [ ] ID-108
[EnumerableSet._length(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L719-L721) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L719-L721


 - [ ] ID-109
[Address.verifyCallResult(bool,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L426-L436) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L426-L436


 - [ ] ID-110
[EnumerableSet._at(EnumerableSet.Set,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L733-L735) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L733-L735


 - [ ] ID-111
[EnumerableSet.remove(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L919-L921) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L919-L921


 - [ ] ID-112
[EnumerableMap.remove(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1429-L1431) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1429-L1431


 - [ ] ID-113
[EnumerableMap.contains(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1342-L1344) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1342-L1344


 - [ ] ID-114
[EnumerableMap.tryGet(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1183-L1186) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1183-L1186


 - [ ] ID-115
[EnumerableMap.tryGet(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1277-L1280) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1277-L1280


 - [ ] ID-116
[EnumerableMap.length(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1349-L1351) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1349-L1351


 - [ ] ID-117
[EnumerableMap.keys(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1207-L1217) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1207-L1217


 - [ ] ID-118
[EnumerableMap.keys(EnumerableMap.AddressToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1395-L1405) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1395-L1405


 - [ ] ID-119
[EnumerableMap.set(EnumerableMap.UintToUintMap,uint256,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1138-L1140) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1138-L1140


 - [ ] ID-120
[EnumerableMap.tryGet(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1465-L1468) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1465-L1468


 - [ ] ID-121
[Address.functionDelegateCall(address,bytes)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L369-L371) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L369-L371


 - [ ] ID-122
[SafeERC20.safeIncreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L503-L506) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L503-L506


 - [ ] ID-123
[EnumerableSet.contains(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L926-L928) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L926-L928


 - [ ] ID-124
[SafeERC20.safePermit(IERC20Permit,address,address,uint256,uint256,uint8,bytes32,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L540-L556) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L540-L556


 - [ ] ID-125
[EnumerableSet.values(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L885-L895) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L885-L895


 - [ ] ID-126
[EnumerableSet.remove(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L845-L847) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L845-L847


 - [ ] ID-127
[Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L377-L384) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L377-L384


 - [ ] ID-128
[EnumerableMap.remove(EnumerableMap.AddressToUintMap,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1335-L1337) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1335-L1337


 - [ ] ID-129
[Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L356-L363) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L356-L363


 - [ ] ID-130
[EnumerableMap.contains(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1154-L1156) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1154-L1156


 - [ ] ID-131
[EnumerableMap.contains(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1436-L1438) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1436-L1438


 - [ ] ID-132
[EnumerableSet.at(EnumerableSet.AddressSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L873-L875) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L873-L875


 - [ ] ID-133
[EnumerableSet.contains(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L852-L854) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L852-L854


 - [ ] ID-134
[EnumerableMap.at(EnumerableMap.Bytes32ToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1456-L1459) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1456-L1459


 - [ ] ID-135
[EnumerableSet.length(EnumerableSet.AddressSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L859-L861) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L859-L861


 - [ ] ID-136
[EnumerableSet._values(EnumerableSet.Set)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L745-L747) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L745-L747


 - [ ] ID-137
[Address.functionCall(address,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L302-L308) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L302-L308


 - [ ] ID-138
[EnumerableMap.remove(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1241-L1243) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1241-L1243


 - [ ] ID-139
[EnumerableSet.values(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L959-L969) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L959-L969


 - [ ] ID-140
[EnumerableMap.contains(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1248-L1250) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1248-L1250


 - [ ] ID-141
[Address.functionStaticCall(address,bytes)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L348-L350) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L348-L350


 - [ ] ID-142
[EnumerableMap.length(EnumerableMap.Bytes32ToBytes32Map)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1066-L1068) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1066-L1068


 - [ ] ID-143
[EnumerableMap.length(EnumerableMap.UintToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1161-L1163) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1161-L1163


 - [ ] ID-144
[EnumerableMap.at(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1174-L1177) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1174-L1177


 - [ ] ID-145
[SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L583-L590) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L583-L590


 - [ ] ID-146
[Address.defaultRevert()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L441-L443) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L441-L443


 - [ ] ID-147
[SafeERC20.forceApprove(IERC20,address,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L527-L534) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L527-L534


 - [ ] ID-148
[EnumerableSet.length(EnumerableSet.UintSet)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L933-L935) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L933-L935


 - [ ] ID-149
[EnumerableMap.get(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1289-L1291) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1289-L1291


 - [ ] ID-150
[EnumerableMap.remove(EnumerableMap.Bytes32ToBytes32Map,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1051-L1054) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1051-L1054


 - [ ] ID-151
[SafeERC20.safeDecreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L512-L520) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L512-L520


 - [ ] ID-152
[EnumerableMap.set(EnumerableMap.UintToAddressMap,uint256,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1232-L1234) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1232-L1234


 - [ ] ID-153
[EnumerableSet.at(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L947-L949) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L947-L949


 - [ ] ID-154
[EnumerableMap.keys(EnumerableMap.UintToAddressMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1301-L1311) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1301-L1311


 - [ ] ID-155
[EnumerableSet.add(EnumerableSet.AddressSet,address)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L835-L837) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L835-L837


 - [ ] ID-156
[EnumerableMap.at(EnumerableMap.UintToAddressMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1268-L1271) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1268-L1271


 - [ ] ID-157
[Address.verifyCallResult(bool,bytes)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L414-L416) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L414-L416


 - [ ] ID-158
[EnumerableMap.length(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1443-L1445) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1443-L1445


 - [ ] ID-159
[EnumerableMap.remove(EnumerableMap.UintToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1147-L1149) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1147-L1149


 - [ ] ID-160
[ReentrancyGuard._reentrancyGuardEntered()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L84-L86


 - [ ] ID-161
[EnumerableMap.get(EnumerableMap.Bytes32ToUintMap,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1477-L1479) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1477-L1479


 - [ ] ID-162
[EnumerableSet._remove(EnumerableSet.Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L675-L707) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L675-L707


 - [ ] ID-163
[EnumerableSet.add(EnumerableSet.UintSet,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L909-L911) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L909-L911


 - [ ] ID-164
[EnumerableSet.remove(EnumerableSet.Bytes32Set,bytes32)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L771-L773) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L771-L773


 - [ ] ID-165
[EnumerableMap.at(EnumerableMap.AddressToUintMap,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1362-L1365) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1362-L1365


 - [ ] ID-166
[EnumerableMap.keys(EnumerableMap.Bytes32ToUintMap)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1489-L1499) is never used and should be removed

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1489-L1499


 - [ ] ID-167
[ERC20._burn(address,uint256)](src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L577-L582


 - [ ] ID-168
[Context._msgData()](src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127) is never used and should be removed

src/core/flattened/LayerCakeTransportedToken.f.sol#L125-L127


 - [ ] ID-169
[Address.sendValue(address,uint256)](src/core/flattened/LayerCake.f.sol#L181-L190) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L181-L190


 - [ ] ID-170
[Address.functionCallWithValue(address,bytes,uint256)](src/core/flattened/LayerCake.f.sol#L237-L239) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L237-L239


 - [ ] ID-171
[Address.verifyCallResult(bool,bytes,function())](src/core/flattened/LayerCake.f.sol#L344-L354) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L344-L354


 - [ ] ID-172
[Address.functionDelegateCall(address,bytes)](src/core/flattened/LayerCake.f.sol#L287-L289) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L287-L289


 - [ ] ID-173
[SafeERC20.safeIncreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCake.f.sol#L421-L424) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L421-L424


 - [ ] ID-174
[SafeERC20.safePermit(IERC20Permit,address,address,uint256,uint256,uint8,bytes32,bytes32)](src/core/flattened/LayerCake.f.sol#L458-L474) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L458-L474


 - [ ] ID-175
[Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCake.f.sol#L295-L302) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L295-L302


 - [ ] ID-176
[Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCake.f.sol#L274-L281) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L274-L281


 - [ ] ID-177
[Address.functionCall(address,bytes,function())](src/core/flattened/LayerCake.f.sol#L220-L226) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L220-L226


 - [ ] ID-178
[Address.functionStaticCall(address,bytes)](src/core/flattened/LayerCake.f.sol#L266-L268) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L266-L268


 - [ ] ID-179
[SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCake.f.sol#L501-L508) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L501-L508


 - [ ] ID-180
[Address.defaultRevert()](src/core/flattened/LayerCake.f.sol#L359-L361) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L359-L361


 - [ ] ID-181
[SafeERC20.forceApprove(IERC20,address,uint256)](src/core/flattened/LayerCake.f.sol#L445-L452) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L445-L452


 - [ ] ID-182
[SafeERC20.safeDecreaseAllowance(IERC20,address,uint256)](src/core/flattened/LayerCake.f.sol#L430-L438) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L430-L438


 - [ ] ID-183
[Address.verifyCallResult(bool,bytes)](src/core/flattened/LayerCake.f.sol#L332-L334) is never used and should be removed

src/core/flattened/LayerCake.f.sol#L332-L334


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-184
solc-0.8.19 is not recommended for deployment

 - [ ] ID-185
Pragma version[0.8.19](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L5


 - [ ] ID-186
Pragma version[0.8.19](src/core/flattened/LayerCakeOriginDeploy.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeOriginDeploy.f.sol#L5


 - [ ] ID-187
solc-0.8.19 is not recommended for deployment

 - [ ] ID-188
Pragma version[0.8.19](src/core/flattened/LayerCakeTransportedToken.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTransportedToken.f.sol#L5


 - [ ] ID-189
solc-0.8.19 is not recommended for deployment

 - [ ] ID-190
solc-0.8.19 is not recommended for deployment

 - [ ] ID-191
Pragma version[0.8.19](src/core/flattened/LayerCakeDeployTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeDeployTools.f.sol#L5


 - [ ] ID-192
Pragma version[0.8.19](src/core/flattened/LayerCake.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCake.f.sol#L5


 - [ ] ID-193
solc-0.8.19 is not recommended for deployment

 - [ ] ID-194
Pragma version[0.8.19](src/core/flattened/LayerCakeTools.f.sol#L5) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.

src/core/flattened/LayerCakeTools.f.sol#L5


 - [ ] ID-195
solc-0.8.19 is not recommended for deployment

## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-196
Low level call in [Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L281):
	- [(success,returndata) = target.staticcall(data)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L279)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L274-L281


 - [ ] ID-197
Low level call in [Address.functionCallWithValue(address,bytes,uint256,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L249-L260):
	- [(success,returndata) = target.call{value: value}(data)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L258)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L249-L260


 - [ ] ID-198
Low level call in [Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L302):
	- [(success,returndata) = target.delegatecall(data)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L300)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L295-L302


 - [ ] ID-199
Low level call in [Address.sendValue(address,uint256)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L181-L190):
	- [(success) = recipient.call{value: amount}()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L186)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L181-L190


 - [ ] ID-200
Low level call in [SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L501-L508):
	- [(success,returndata) = address(token).call(data)](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L506)

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L501-L508


 - [ ] ID-201
Low level call in [Address.sendValue(address,uint256)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L263-L272):
	- [(success) = recipient.call{value: amount}()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L268)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L263-L272


 - [ ] ID-202
Low level call in [Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L377-L384):
	- [(success,returndata) = target.delegatecall(data)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L382)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L377-L384


 - [ ] ID-203
Low level call in [SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L583-L590):
	- [(success,returndata) = address(token).call(data)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L588)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L583-L590


 - [ ] ID-204
Low level call in [Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L356-L363):
	- [(success,returndata) = target.staticcall(data)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L361)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L356-L363


 - [ ] ID-205
Low level call in [Address.functionCallWithValue(address,bytes,uint256,function())](src/core/flattened/LayerCakeOriginDeploy.f.sol#L331-L342):
	- [(success,returndata) = target.call{value: value}(data)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L340)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L331-L342


 - [ ] ID-206
Low level call in [Address.functionDelegateCall(address,bytes,function())](src/core/flattened/LayerCake.f.sol#L295-L302):
	- [(success,returndata) = target.delegatecall(data)](src/core/flattened/LayerCake.f.sol#L300)

src/core/flattened/LayerCake.f.sol#L295-L302


 - [ ] ID-207
Low level call in [Address.functionStaticCall(address,bytes,function())](src/core/flattened/LayerCake.f.sol#L274-L281):
	- [(success,returndata) = target.staticcall(data)](src/core/flattened/LayerCake.f.sol#L279)

src/core/flattened/LayerCake.f.sol#L274-L281


 - [ ] ID-208
Low level call in [SafeERC20._callOptionalReturnBool(IERC20,bytes)](src/core/flattened/LayerCake.f.sol#L501-L508):
	- [(success,returndata) = address(token).call(data)](src/core/flattened/LayerCake.f.sol#L506)

src/core/flattened/LayerCake.f.sol#L501-L508


 - [ ] ID-209
Low level call in [Address.sendValue(address,uint256)](src/core/flattened/LayerCake.f.sol#L181-L190):
	- [(success) = recipient.call{value: amount}()](src/core/flattened/LayerCake.f.sol#L186)

src/core/flattened/LayerCake.f.sol#L181-L190


 - [ ] ID-210
Low level call in [Address.functionCallWithValue(address,bytes,uint256,function())](src/core/flattened/LayerCake.f.sol#L249-L260):
	- [(success,returndata) = target.call{value: value}(data)](src/core/flattened/LayerCake.f.sol#L258)

src/core/flattened/LayerCake.f.sol#L249-L260


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-211
Function [IERC20Permit.DOMAIN_SEPARATOR()](src/core/flattened/LayerCakeDestinationDeploy.f.sol#L141) is not in mixedCase

src/core/flattened/LayerCakeDestinationDeploy.f.sol#L141


 - [ ] ID-212
Function [IERC20Permit.DOMAIN_SEPARATOR()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L223) is not in mixedCase

src/core/flattened/LayerCakeOriginDeploy.f.sol#L223


 - [ ] ID-213
Function [IERC20Permit.DOMAIN_SEPARATOR()](src/core/flattened/LayerCake.f.sol#L141) is not in mixedCase

src/core/flattened/LayerCake.f.sol#L141


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-214
[LayerCakeOriginDeploy.transferDepositsToLayerCake()](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1572-L1577) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= deployTime,DLC1)](src/core/flattened/LayerCakeOriginDeploy.f.sol#L1573)

src/core/flattened/LayerCakeOriginDeploy.f.sol#L1572-L1577


 - [ ] ID-215
[LayerCake._proveBandwidth(address,uint256,uint256)](src/core/flattened/LayerCake.f.sol#L844-L885) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! bp.negated && block.timestamp - bp.timeLastNegated > 2 * params.reorgAssumption,PB1)](src/core/flattened/LayerCake.f.sol#L846)
	- [require(bool,string)(block.timestamp >= bp.timeLastActive,PB2)](src/core/flattened/LayerCake.f.sol#L847)
	- [(block.timestamp - bp.startTime) / (2 * params.reorgAssumption) > (bp.timeLastActive - bp.startTime) / (2 * params.reorgAssumption)](src/core/flattened/LayerCake.f.sol#L851-L852)
	- [bp.currentUsedBandwidth > bp.currentTotalBandwidth || amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth](src/core/flattened/LayerCake.f.sol#L856-L857)
	- [require(bool,string)(block.timestamp - bp.timeLastActive > params.reorgAssumption,PB3)](src/core/flattened/LayerCake.f.sol#L859)
	- [require(bool,string)(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount,PB4)](src/core/flattened/LayerCake.f.sol#L864)
	- [bp.startTime == 0](src/core/flattened/LayerCake.f.sol#L866)
	- [require(bool,string)(bp.currentTotalBandwidth >= params.minBandwidth,PB5)](src/core/flattened/LayerCake.f.sol#L872)
	- [require(bool,string)(bp.currentTotalBandwidth <= params.minBandwidth * params.maxBandwidthMultiple,PB6)](src/core/flattened/LayerCake.f.sol#L873)
	- [bp.currentTotalBandwidth > 0](src/core/flattened/LayerCake.f.sol#L880)
	- [require(bool,string)(bp.currentTotalBandwidth >= params.minBandwidth,PB7)](src/core/flattened/LayerCake.f.sol#L881)

src/core/flattened/LayerCake.f.sol#L844-L885


 - [ ] ID-216
[LayerCake._executeOperations(LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L807-L818) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp >= executionProof.operations.executionTime,EO2)](src/core/flattened/LayerCake.f.sol#L809)

src/core/flattened/LayerCake.f.sol#L807-L818


 - [ ] ID-217
[LayerCake._storeOperations(LayerCakeTools.Operations)](src/core/flattened/LayerCake.f.sol#L795-L805) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(operations.recipient != address(0),SO1)](src/core/flattened/LayerCake.f.sol#L796)
	- [require(bool,string)(operations.sender == msg.sender,SO2)](src/core/flattened/LayerCake.f.sol#L797)
	- [require(bool,string)(operations.amount >= operations.fee,SO4)](src/core/flattened/LayerCake.f.sol#L798)

src/core/flattened/LayerCake.f.sol#L795-L805


 - [ ] ID-218
[LayerCake.storeNegationOperations(LayerCakeTools.Operations,LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L694-L716) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(operations.negatedBandwidthProvider != address(0),SNO1)](src/core/flattened/LayerCake.f.sol#L697)
	- [require(bool,string)(getInvalidExecutionProofId(invalidExecutionProof) == operations.invalidExecutionProofId,SNO2)](src/core/flattened/LayerCake.f.sol#L698)
	- [require(bool,string)(recoverSigner(getExecutionId(arrivingPathwayId,invalidExecutionProof.operations),invalidExecutionProof) == operations.negatedBandwidthProvider,SNO3)](src/core/flattened/LayerCake.f.sol#L699-L703)

src/core/flattened/LayerCake.f.sol#L694-L716


 - [ ] ID-219
[LayerCake._negateBp(address,uint256,uint256,bool,bytes32)](src/core/flattened/LayerCake.f.sol#L887-L918) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(bp.prevInvalidExecutionProofId == invalidExecutionProofId,NB1)](src/core/flattened/LayerCake.f.sol#L896)
	- [bp.negationCounter > 1](src/core/flattened/LayerCake.f.sol#L899)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB2)](src/core/flattened/LayerCake.f.sol#L900)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth / params.maxBandwidthMultiple,NB3)](src/core/flattened/LayerCake.f.sol#L903)
	- [require(bool,string)(depositedAmount - fee == bp.currentTotalBandwidth,NB4)](src/core/flattened/LayerCake.f.sol#L909)
	- [require(bool,string)(initialNegation == bp.negated,NB5)](src/core/flattened/LayerCake.f.sol#L913)

src/core/flattened/LayerCake.f.sol#L887-L918


## reentrancy-benign
Impact: Low
Confidence: Medium
 - [ ] ID-220
Reentrancy in [LayerCake.increaseFee(bytes32,uint256)](src/core/flattened/LayerCake.f.sol#L739-L745):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),addedFee)](src/core/flattened/LayerCake.f.sol#L741)
	State variables written after the call(s):
	- [preparedExecutionIds[executionId].feeIncrease = preparedExecutionIds[executionId].feeIncrease + addedFee](src/core/flattened/LayerCake.f.sol#L744)

src/core/flattened/LayerCake.f.sol#L739-L745


 - [ ] ID-221
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeTools.Operations)](src/core/flattened/LayerCake.f.sol#L686-L692):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),operations.amount)](src/core/flattened/LayerCake.f.sol#L689)
	State variables written after the call(s):
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L691)
		- [storedExecutionIds[executionId] = true](src/core/flattened/LayerCake.f.sol#L803)

src/core/flattened/LayerCake.f.sol#L686-L692


 - [ ] ID-222
Reentrancy in [LayerCake.storeNegationOperations(LayerCakeTools.Operations,LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L694-L716):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),operations.amount)](src/core/flattened/LayerCake.f.sol#L705)
	State variables written after the call(s):
	- [operations.amount = _negateBp(operations.negatedBandwidthProvider,operations.amount,operations.fee,operations.initialNegation,operations.invalidExecutionProofId)](src/core/flattened/LayerCake.f.sol#L707-L713)
		- [bpInfo[bandwidthProvider] = bp](src/core/flattened/LayerCake.f.sol#L916)
	- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L714)
		- [storedExecutionIds[executionId] = true](src/core/flattened/LayerCake.f.sol#L803)

src/core/flattened/LayerCake.f.sol#L694-L716


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-223
Reentrancy in [LayerCake.storeNegationOperations(LayerCakeTools.Operations,LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L694-L716):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),operations.amount)](src/core/flattened/LayerCake.f.sol#L705)
	Event emitted after the call(s):
	- [NegationStored(operations.negatedBandwidthProvider,invalidExecutionProof)](src/core/flattened/LayerCake.f.sol#L715)
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L804)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L714)

src/core/flattened/LayerCake.f.sol#L694-L716


 - [ ] ID-224
Reentrancy in [LayerCake.addBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L718-L728):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),depositedAmount)](src/core/flattened/LayerCake.f.sol#L724)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,true,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L727)

src/core/flattened/LayerCake.f.sol#L718-L728


 - [ ] ID-225
Reentrancy in [LayerCake.storeStandardOperations(LayerCakeTools.Operations)](src/core/flattened/LayerCake.f.sol#L686-L692):
	External calls:
	- [token.safeTransferFrom(msg.sender,address(this),operations.amount)](src/core/flattened/LayerCake.f.sol#L689)
	Event emitted after the call(s):
	- [OperationsStored(executionId,operations)](src/core/flattened/LayerCake.f.sol#L804)
		- [_storeOperations(operations)](src/core/flattened/LayerCake.f.sol#L691)

src/core/flattened/LayerCake.f.sol#L686-L692


 - [ ] ID-226
Reentrancy in [LayerCake.executeNegationOperations(LayerCakeTools.ExecutionProof,LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L762-L789):
	External calls:
	- [(executionPrepared) = _executeOperations(negationExecutionProof)](src/core/flattened/LayerCake.f.sol#L780)
		- [returndata = address(token).functionCall(data)](src/core/flattened/LayerCake.f.sol#L487)
		- [(success,returndata) = target.call{value: value}(data)](src/core/flattened/LayerCake.f.sol#L258)
		- [token.safeTransfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L815)
	- [token.safeTransfer(negationExecutionProof.operations.recipient,negationExecutionProof.operations.amount - negationExecutionProof.operations.fee)](src/core/flattened/LayerCake.f.sol#L784-L787)
	External calls sending eth:
	- [(executionPrepared) = _executeOperations(negationExecutionProof)](src/core/flattened/LayerCake.f.sol#L780)
		- [(success,returndata) = target.call{value: value}(data)](src/core/flattened/LayerCake.f.sol#L258)
	Event emitted after the call(s):
	- [NegationStored(negationExecutionProof.operations.negatedBandwidthProvider,invalidExecutionProof)](src/core/flattened/LayerCake.f.sol#L788)

src/core/flattened/LayerCake.f.sol#L762-L789


 - [ ] ID-227
Reentrancy in [LayerCake._executeOperations(LayerCakeTools.ExecutionProof)](src/core/flattened/LayerCake.f.sol#L807-L818):
	External calls:
	- [token.safeTransfer(msg.sender,partialFee)](src/core/flattened/LayerCake.f.sol#L815)
	Event emitted after the call(s):
	- [OperationsExecuted(executionId,msg.sender,executionProof,executionPrepared)](src/core/flattened/LayerCake.f.sol#L816)

src/core/flattened/LayerCake.f.sol#L807-L818


 - [ ] ID-228
Reentrancy in [LayerCake.subtractBandwidth(uint256)](src/core/flattened/LayerCake.f.sol#L730-L737):
	External calls:
	- [token.safeTransfer(msg.sender,withdrawnAmount)](src/core/flattened/LayerCake.f.sol#L735)
	Event emitted after the call(s):
	- [BandwidthChanged(msg.sender,false,bandwidthAmount)](src/core/flattened/LayerCake.f.sol#L736)

src/core/flattened/LayerCake.f.sol#L730-L737


