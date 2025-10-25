## Visiblity

```
   There are four types of visiblity
       - Public
       - Private
       - external
       - internal
```

```
Same contract

    Public
        - same contract can call the function.
    External
        - same contract can't call the function.
    Private
        - same contract can call the function.
    Internal
        - same contract can call the function.

```

```
Derived Contract

    Public
        - derived contract can call the function.
    External
        - derived contract can't call the function.
    Private
        - derived contract can't call the function.
    Internal
        - derived contract can call the function.
```

```
Other Contracts

    Public
        - Other contract can call the function.
    External
        - Other contract can call the function.
    Private
        - Other contract can't call the function.
    Internal
        - Other contract can't call the function.
```

```
External Users

    Public
        - user  can call the function.
    External
        - user can call the function.
    Private
        - user can't call the function.
    Internal
        - user can't call the function.

```

## View

```
    In solidity, the view keyword indicates that the function does
    not modify the state of the blockchain.


    It is a type of function modifier that tells the etherum virtual machine
    (EVM) that the function is read-only and will not alter any state variable or perform any operations that would requrie a transcation.

```

## Types of functions

```
1. State-changing functions: Functions that modify state variable interact
with other contracts, or send/recieve ether require a transaction and are consider "non-view" functions.

2. View functions: These are functions that only read from the blockchain
state like reading a variable  but do not modify it. They can be called
without creating a transcation and do not consume gas when called externally
via a call.
```
