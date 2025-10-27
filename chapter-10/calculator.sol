// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Calculator is Ownable {
    constructor() Ownable(msg.sender) {}

    uint256 numbers;


    function add(uint256 _nums) public onlyOwner{
        numbers += _nums;
    }
}
