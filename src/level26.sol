// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IDetectionBot {
    function handleTransaction(address user, bytes calldata msgData) external;
}

interface IForta {
    function setDetectionBot(address detectionBotAddress) external;
    function notify(address user, bytes calldata msgData) external;
    function raiseAlert(address user) external;
}

contract AlertBot is IDetectionBot {
    address private cryptoVault;
    
    constructor(address _cryptoVault) public {
        cryptoVault = _cryptoVault;
    }

    function handleTransaction(address user, bytes calldata msgData) external override {

        address origSender;
        assembly {
            origSender := calldataload(0xa8)
        }

        if(origSender == cryptoVault) {
            IForta(msg.sender).raiseAlert(user);
        }
    }
}