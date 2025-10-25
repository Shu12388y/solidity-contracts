// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract NameRegistry {
    // create a mapping
    // {address -> string} , {key:value}
    mapping(address => string) public name;

    function setname(string memory _username) public returns (string memory) {
        if (bytes(name[msg.sender]).length != 0) {
            return "Sender already exists";
        }

        name[msg.sender] = _username;
        return _username;
    }

    function getname() public view returns (string memory) {
        return name[msg.sender];
    }
}
