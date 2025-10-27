## Cross Contract Invocation

```
A cross contract call refer to a scenario where one smart contract
interacts with another smart contract by invoking its functions.


This is a fundamental concept in blockchain programming, enabling modular,
reusable, and composable systems.
```


## Interfaces

``` 
An interfaces in solidity is a way to define a contracts
external functions without providing their implementation.

Properties of interfaces

- Function declartion only:
    a. Interface only allow function declarations without implementations.
    b. Functions must be external.

- No state variable or constructors:
    a. Interfaces cannot have state variables or constructor.

- No inheritance from other contract
    a. Interface can inherit only from other interfaces.

- Interaction with other contracts:
    a. Interfaces are commonly used to interact with already deployed
    contracts, enabling modularity and upgradability.
```

