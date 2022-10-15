// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel26.sol";

contract POC is Script {

     DoubleEntryPoint level26 = DoubleEntryPoint(0xBF85e551fd3e861cbBe7Ce8C78d68aF663E47AF1);
    function run() external{
        vm.startBroadcast();

        level26.forta().setDetectionBot(0xdeCd21EFc9C7Cc37f5Ea280824214489956eDc43);

        vm.stopBroadcast();
    }
}