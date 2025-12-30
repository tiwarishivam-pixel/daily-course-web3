// Create contract:
// Struct Student { name, presentCount }
// Mapping address → Student
// Function markPresent() increases count
// Function getStudent() returns struct data
// Ensure user can mark only themselves, not others

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract attendence{
    struct student {
        string name;
        uint presentCount;
    }

    mapping(address => student) public students;

    function markPresent() public {
        students[msg.sender].presentCount += 1;
    }

    function getStudent () public view returns(string memory,uint){
        student memory s = students[msg.sender];
        return (s.name, s.presentCount);
    }

    function setStudentName(string memory _name) public {
        students[msg.sender].name = _name;
    }
}