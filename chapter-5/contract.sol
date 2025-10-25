// SPX license MIT

pragma solidity ^0.8.0;

contract Contract {
    uint256 public storedNums;

    constructor(uint256 _init) {
        // condition
        require(_init != 0, "Number should not be 0");
        storedNums = _init;
    }

    // loops
    function addnums(uint256 n) public {
        for (uint256 index = 0; index < n; index++) {
            storedNums += index;
        }
    }

    function viewStoredNums() public view returns (uint256) {
        return storedNums;
    }
}
