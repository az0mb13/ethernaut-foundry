pragma solidity ^0.6.0;

import "../instances/Ilevel00.sol";
import "forge-std/Test.sol";

contract Attacker is Test {
    Instance level0 = Instance(0x002Ba7d05c296A18F5Cb1E2BF31bA08C1b7fE220);

    function exploit() public {
        level0.authenticate(level0.password());
        require(level0.getCleared());
    }
}

