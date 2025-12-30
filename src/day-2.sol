// Q2 — Bank Access Levels
// Create a small bank contract:
// deposit() → public
// withdraw() → public
// Internal function that calculates a fee and is used inside withdraw
// Private function used only inside contract
// External function that returns total balance

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract bank {
    mapping(address => uint) public balances;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function deposit() public payable {
        require(msg.value > 0, "Amount must be greater than zero");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        uint fee = calculatefee(amount);
        uint finalamount = amount-fee;
        balances[msg.sender] -= amount;

        logAction(msg.sender,amount);

        (bool sent,) = msg.sender.call{value : finalamount}("");
        require(sent, "withdraw failed");
    }

    function calculatefee(uint amount) internal pure returns(uint){
        return amount/100;
    }

    function logAction(address user, uint amount)private pure{
        user;
        amount;
    }

    function getTotalBankBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function getMyBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}