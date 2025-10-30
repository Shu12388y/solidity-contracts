## ERC-20

```
Other then native token all token are custom tokens

- Etherum is a native token
- And token like USDT/USDC are the custom tokens


The native token balance is stored in the EOA 
And the custom token balnce is stored in Address(contract) at storage.

Every custom token on ETH is a new contract.

```


## What is a token

```
- It is a type of currency.
- It has an owner/issuer/minter.
- There is a mapping of which address owns how much of the token.
- Addresses should be allowed to transfer tokens to other addresses.
```


## Allowances

```
An allowances refers to the mechanism that allows a token holder 
to grant permission to another address(typically a smart contract)
to spend a specified amount to their tokens.
```


## Decimals

```
The decimal parameter refers to the number of decimals places the token can 
be divided into. It is an important property that defines the smallest unit of the token, enabling more granular transcations and better user experiences in terms of handling very small amounts of the token.
```


## ERC 20 Specs

```
- totalSupply()

Returns the total number of tokens in circulation(the total supply of the token).


- balanceOf(address,account)

Returns the balance of tokens held by specific address(account).


- transfer(address,recipient,uint256 amount)

Transfer a specified number of tokens(amount) from the caller's account to
the recipient address. This functions returns true if the transfer is successful.


- allowance(address owner, address spender)

Returns the amount of tokens that the spender is allowed to transfer on behalf of the owner based on the allowance previously set by the owner 
using the approve() function.


- approve(address spender, uint256 amount)

Approves the spender to spend up to a specified number of tokens (amount)
from the caller's account. This creates an "allowances" that the spender 
can use with the transerFrom() function.



- transferFrom(address sender, address recipient, uint256 amount)

Allows the spender(who must have been approved by the sender) to transfer 
token from the sender's account to the recipient's account. 

```



## How to mint/launch a token?

```
1. Initial Coin Offering (ICO)
2. Airdrop
3. Fair Launch
4. Token Vesting/Token Unlocking
```


