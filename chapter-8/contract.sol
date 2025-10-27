// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Contract {
    // Defineing a dynamic array
    uint256[] nums;

    function addNums(uint _n) public {
        nums.push(_n);
    }

    function getNumsLength() public view returns (uint256) {
        return nums.length;
    }

    function getNumsByIndex(uint256 _index) public view returns (uint256) {
        require(nums.length > _index,"Invalid Index");
        return nums[_index];
    }
}
