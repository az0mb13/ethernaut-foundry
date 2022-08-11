pragma solidity ^0.6.0;

import "../instances/Ilevel00.sol";
import "forge-std/Test.sol";

contract Attacker is Test {
    Instance level0 = Instance(0x879A7D9b82862eba53B2B5294CADd808630060B4);

    function test() external{
        vm.startBroadcast();
        level0.password();
        level0.authenticate(level0.password());
        vm.stopBroadcast();
    }
        
}