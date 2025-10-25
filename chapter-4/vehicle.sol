// SPX

pragma solidity ^0.8.0;

import "./contract.sol";

// Inherit the Vehicle contract
contract Car is Vehicle {
    uint public numberOfDoors;

    // Here we have to also pass the vehicle contract constructor arguments
    // then call the Vehicle by it constructor
    constructor(string memory _brand, uint256 _numberOfDoors) Vehicle(_brand) {
        numberOfDoors = _numberOfDoors;
    }

    // Override the function
    function description() public pure override returns (string memory) {
        return "This is Car";
    }
}
