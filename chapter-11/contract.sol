// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Storage {
    uint private number;

    function addNums(uint256 _nums) public {
        number += _nums;
    }

    function getNums() public view returns (uint256) {
        return number;
    }
}
