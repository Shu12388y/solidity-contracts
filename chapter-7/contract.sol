// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Dynamic {
    // defining a fixed size array
    uint256[2] public nums;

    function setNumbers(uint256 _num1, uint256 _num2) public {
        nums[0] = _num1;
        nums[1] = _num2;
    }

    function getNumber(uint256 _index) public returns (uint256) {
        nums[1] = 3;
        return nums[_index];
    }
}
