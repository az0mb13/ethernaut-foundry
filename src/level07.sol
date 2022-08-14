// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Forced{
    constructor () public payable {
        selfdestruct(0x570F2d712F9247d8eeaC3bf9ef1300b1b29cF480);
    }
}