// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// // Declaring the contract
// contract Sum {

//     // This are member state variables of this contract

//     uint8 num = 8;
//     uint256 biggernum = 120000;
//     int negativeNumber = -1;

//     bool isActive = true;
//     address owner = 0x1234567890123456789012345678901234567890;

//     string name = "shubham";

// }

pragma solidity ^0.8.0;

contract Calculator {
    uint num = 0;
    constructor(uint _num) {
        num = _num;
    }

    function add(uint _num) public {
        num = num + _num;
    }

    function substract(uint _num) public {
        if (num <= 0) {
            num = 0;
        }
        if (num >= _num) {
            num = num - _num;
        }
    }

    function getNum() public view returns (uint) {
        return num;
    }
}
