// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;



contract PayMe{

    uint private amount;


    function deposit() public payable {
        amount += msg.value;
    }



    function withdraw(address payable recipt) public {
        payable(recipt).transfer(amount);
    } 


    function getbalance() public view returns (uint){
            return  address(this).balance;
    }

    
}