// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestBot {
  bytes public calldataAtHandleTransaction;
  bytes public parameterAtHandleTransaction;

  function handleTransaction(address user, bytes calldata msgData) external { 
    calldataAtHandleTransaction = msg.data;
    parameterAtHandleTransaction = msgData;
  }
}

contract TestDet {
  address botAddress;

  constructor(address _botAddress) {
    botAddress = _botAddress;
  }

  function delegateTransfer(
    address addr1, // 0x1111111111111111111111111111111111111111
    uint256 val1,  // 10
    address addr2  // 0x2222222222222222222222222222222222222222
  ) external {
    TestBot(botAddress).handleTransaction(addr1, msg.data);
  }
}