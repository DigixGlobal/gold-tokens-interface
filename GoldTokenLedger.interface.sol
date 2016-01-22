// GoldTokenLedger.interface.sol
// Copyright 2016 - DigixGlobal Pte Ltd
// MIT License

contract GoldTokenLedger{
  function GoldTokenLedger(address _conf);
  function approve(address _addr,uint256 _val) returns(bool);
  function totalSupply() constant returns(uint256);
  function transferFrom(address _from,address _to,uint256 _value) returns(bool);
  function txFeeWallet() returns(address);
  function accountingWallet() returns(address);
  function storageRate() returns(uint256);
  function balanceOf(address _address) returns(uint256);
  function transfer(address _to,uint256 _value) returns(bool);
  function txFee() returns(uint256);
  function getBase() returns(uint256);
  function allowance(address _owner,address _spender) constant returns(uint256);
  function calculateTxFee(uint256 _value,address _user) returns(uint256);
}


