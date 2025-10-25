// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint256 total = 0;

    constructor(uint256 _init) {
        total = _init;
    }

    // functions
    // public -> visibly
    function add(uint256 _num) public {
        total += _num;
    }

    function get() public view returns (uint256) {
        return total;
    }

    function set() private {
        total = 0;
    }

    // Require is used to check the condition
    function div(uint256 _num) public {
        require(_num != 0, "message can't be 0");
        total = total / _num;
    }
}
