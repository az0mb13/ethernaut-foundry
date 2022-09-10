// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract Destructive {
    function killed() external {
        selfdestruct(address(0));
    }
    
}