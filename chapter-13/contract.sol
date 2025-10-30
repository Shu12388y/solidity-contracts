// SPDX-License-Identifier:MIT

// ERC20 contract
pragma solidity ^0.8.0;

contract DopeCoin {
    address public _owner;
    uint public totalSupply;
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowances;

    constructor() {
        _owner = msg.sender;
    }

    // mint -> printing/creating token
    function mint(uint _amount) public {
        require(msg.sender == _owner);
        balances[_owner] += _amount;
        totalSupply += _amount;
    }

    // mint TO
    function mintTO(address to, uint _amount) public {
        require(msg.sender == _owner);
        balances[to] += _amount;
        totalSupply += _amount;
    }

    // transfer
    function transfer(address to, uint _amount) public {
        require(balances[msg.sender] >= _amount);
        balances[to] += _amount;
        balances[msg.sender] -= _amount;
    }

    // burn
    function burn(uint _amount) public {
        require(msg.sender == _owner);
        balances[_owner] -= _amount;
        totalSupply -= _amount;
    }

    function allowance(address _spender, uint _amount) public {
        allowances[msg.sender][_spender] = _amount;
    }

    function allowanceTO(address _to, address _own, uint _amount) public {
        require(allowances[_own][msg.sender] > 0, "You not have allowance");
        require(balances[_own] > _amount, "Low balance");
        balances[_to] += _amount;
        balances[_own] -= _amount;
        allowances[_own][msg.sender] -= _amount;
    }
}
