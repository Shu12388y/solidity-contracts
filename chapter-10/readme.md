## Memory vs Stack vs Storage

````
    Storage
Storage refer to the presistent data that is saved on the blockchain. It
is used for state variable that you declare at the contract level. Data
stored is written to the blockchain and remains there permanently, across
function calls and transcation, untill it is explicitly modified.

    example:
    ```solidity
    contract Contract{
        // this state variable
        uint256 nums;
    }
    ```

Writing to storage is costly in terms of gas because it requires changes
to the blockchain state, which involves network consensus and storage
allocation on the blockchain.

````

````
    Memory
Memory refers to temporary data storage that only exists during the execution of a function. It is cheaper than storage because it is not
stored on the blockchain and is only kept in the node's memory while the
function is executing. Once the function finishes execution, the data is
discarded.

example:

```solidity
    contract Contract{
        uint nums;

        function getNums() public{
            uint test  = 9; // this variable value is stored in memory
            nums += test;
        }
    }

```

    -   Temporary: Data in memory is erased once the function execution ends.
    -   Cheaper than storage: Writing to memory is significantly cheaper in terms of gas costs compared to storage because it does not involve writing to the blockchain.
    -   Not Persistent: Data in memory is not stored permanently and cannot be
    accessed outside the function that created it.
    -   Used for function arguments/local variable: When passing 'large structures or array' into functions, they are often stored in memory
    for cheaper gas consumption.

```


```
    Stack
    The stack in solidity is a limited low level data structure used to
    store small, temporary values that are used during the execution of a
    function. It is akin to a "call stack" in other programming language.
    when you call a function, the EVM pushes temporary values (such as function arguments and local variables) onto the stack.

```




```
    Modifiers

In solidity, modifiers are a powerful feature that allow you to modify
the behaviour of functions. In a reusable and declarative way. They are
used to add additional checks or functionality to a function group of
functions, before or after the main logic is executed.

    example:
        ```solidity

        contract Nums{

            uint256 number;
            address owner;


            constructor(){
                owner = msg.sender;
            }


            modifier isOwner(){
                require(owner == msg.sender);
                _;
            }

            function addNums(uint256 n) public isOwner{
                number += n;
            }
        }

        ```

```



```
    Pure Functions

In solidity, pure functions are functions that do not read from or modify
the blockchain state. They only rely on their input parameters to perform
calculats or operations and return a result.
Importantly, pure functions do not interact with any state variable or
external contract.

    ```solidity
        contract Contract{

            // This not modifying and read from blockchain
            function add(uint256 a, uint256 b) public pure returns(uint256){
                return a + b;
            }
        }
    ```
```



```
    Events

In etherum, events are a mechanism that allow smart contract to log information on the blockchain, which can then be accessed by external
consumers(e.g., frontend application, other contracts or off-chain services like oracles). Events enable smart contract to emit logs that can be used
for debugging, indexing, or triggering external action based on contract
activity.

```solidity

contract EventContract{

// indexed used to search all txns from a specific user later
    event Transfer(address indexed from, address indexed to, uint256 value);


// emit the event
    function transfer(address to, uint256 _val){
        emit Transfer(msg.sender, to , _val);
    }

}
```
```



```
    External contract

We can use openzeppelin contract to use in owner contracts.


```