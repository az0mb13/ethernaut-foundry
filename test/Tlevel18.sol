// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../instances/Ilevel18.sol";

contract POC is Test {

    function test() external{
        vm.startBroadcast();
        bytes memory code = "0x600a600c600039600a6000f3602a60505260206050f3";
        address solver;

        assembly {
            solver := create(0, add(code, 0x20), mload(code))
        }
        vm.stopBroadcast();
    }
}