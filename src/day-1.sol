// Q1 — Student Registry (Storage vs Memory)
// Create a contract that:
// Stores student name and age
// Has a function to update both
// Has a function that returns the name in memory, modify it inside function, and prove that the original storage value does not change

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract studentRegistry {
    string public studentName;
    uint public studentAge;

    function setStudent(string memory _name, uint _age) public {
        studentName = _name;
        studentAge = _age;
    }

    function updateStudent(string memory _name, uint _age) public{
        studentName = _name;
        studentAge = _age;
    }

    function getmodifiedStudent() public view returns (string memory modifiedName, string memory originalName) {
        string memory temp = studentName;
        temp = string(abi.encodePacked(temp, "-edited"));
        return (temp, studentName);
    }   
}