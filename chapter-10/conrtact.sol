// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Contract {
    uint256 number;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    // It is like middleware
    modifier onlyOwner() {
        require(owner == msg.sender);
        _; // It is like a next()
    }

    // defining the event
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Guarded by the onlyOwner function
    function addNums(uint256 _num) public onlyOwner {
        number += _num;
    }

    function getNums() public view returns (uint256) {
        return number;
    }

    function changeOwner(address _addr) public onlyOwner {
        owner = _addr;
    }

    // returing turples
    function returnTuples() public pure returns (uint256, string memory, bool) {
        return (12, "shubham", true);
    }

    // A function that emit the Transfer event
    function transfer(address to, uint256 _val) public {
        emit Transfer(msg.sender, to, _val);
    }
}
