// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Contract {
    struct Person {
        string name;
        uint256 age;
        address addr;
    }

    Person[] public collections;

    Person public person;

    // create a person

    function create(string memory _name, uint256 _age) public {
        person.name = _name;
        person.age = _age;
        person.addr = msg.sender;

        collections.push(person);
    }

    function get(uint256 _index) public view returns (Person memory) {
        require(collections.length > _index);
        return collections[_index];
    }
}
