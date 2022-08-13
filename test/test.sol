// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";

contract Testme is Test {

    function test() external {
        vm.startBroadcast();

        uint8 a = 1;
        uint8 b = 2;
        console.log("The value of a - b is : ", a - b);
        
        vm.stopBroadcast();
    }
}