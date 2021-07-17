// SPDX-License-Identifier: MIT
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol. SEE BELOW FOR SOURCE. !!
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

interface IxYeldMasterChef {

event Deposit(address indexed user,uint256 indexed pid,uint256 amount);
event EmergencyWithdraw(address indexed user,uint256 indexed pid,uint256 amount);
event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
event ReferralCommissionPaid(address indexed user,address indexed referrer,uint256 commissionAmount);
event SetDevAddress(address indexed user,address indexed newAddress);
event SetFeeAddress(address indexed user,address indexed newAddress);
event SetReferralAddress(address indexed user,address indexed newAddress);
event SetVaultAddress(address indexed user,address indexed newAddress);
event UpdateEmissionRate(address indexed user,uint256 xYeldPerBlock);
event Withdraw(address indexed user,uint256 indexed pid,uint256 amount);
function MAXIMUM_REFERRAL_COMMISSION_RATE() external view returns (uint16);
function Yeld() external view returns (address);
function _exclude(address _add) external;
function _updateSwapAndLiquifyEnabled(bool _bool) external;
function add(uint256 _allocPoint,address _lpToken,uint16 _depositFeeBP) external;
function deposit(uint256 _pid,uint256 _amount,address _referrer) external;
function devAddress() external view returns (address);
function emergencyWithdraw(uint256 _pid) external;
function feeAddress() external view returns (address);
function getMultiplier(uint256 _from,uint256 _to) external pure returns (uint256);
function massUpdatePools() external;
function owner() external view returns (address);
function pendingYeld(uint256 _pid,address _user) external view returns (uint256);
function poolExistence(address ) external view returns (bool);
function poolInfo(uint256 ) external view returns (address lpToken, uint256 allocPoint, uint256 lastRewardBlock, uint256 accYeldPerShare, uint16 depositFeeBP);
function poolLength() external view returns (uint256);
function referral() external view returns (address);
function referralCommissionRate() external view returns (uint16);
function renounceOwnership() external;
function set(uint256 _pid,uint256 _allocPoint,uint16 _depositFeeBP) external;
function setDevAddress(address _devAddress) external;
function setFeeAddress(address _feeAddress) external;
function setReferralAddress(address _referral) external;
function setReferralCommissionRate(uint16 _referralCommissionRate) external;
function startBlock() external view returns (uint256);
function totalAllocPoint() external view returns (uint256);
function transferOwnership(address newOwner) external;
function updateEmissionRate(uint256 _xYeldPerBlock) external;
function updatePool(uint256 _pid) external;
function updateStartBlock(uint256 _startBlock) external;
function userInfo(uint256 ,address ) external view returns (uint256 amount, uint256 rewardDebt);
function withdraw(uint256 _pid,uint256 _amount) external;
function xYeldPerBlock() external view returns (uint256);
}