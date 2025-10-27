// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

interface StorageInterface {
    function addNums(uint256 _num) external;
}

contract Interact {
    address private contractAddress;

    constructor(address _addr) {
        contractAddress = _addr;
    }

    function proxyAdd(uint256 _num) public {
        StorageInterface(contractAddress).addNums(_num);
    }
}
