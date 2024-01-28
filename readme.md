  # Prithu Token Contract

## Description

This is a Solidity smart contract for the Prithu token (symbol: PRI). Prithu is an ERC20 token that includes standard functionalities such as minting, burning, and transferring tokens. Additionally, it inherits features from OpenZeppelin contracts such as ERC20, ERC20Burnable, and Ownable.

## Features

- ERC20 compliant token.
- Ability to mint new tokens by the contract owner.
- Ability to burn tokens.
- Transfer functionality implemented with additional checks.

## Usage

1. **Deploy the Contract**: Deploy the `Prithu` contract, providing the initial owner's address.
2. **Mint Tokens**: The contract owner can mint new tokens using the `mintToken` function.
3. **Burn Tokens**: Users can burn their tokens using the `burn` function.
4. **Transfer Tokens**: Transfers can be done using the standard `transfer` function.

## Deployment

Ensure you have a compatible development environment with Solidity version ^0.8.20.

## Security Considerations

- **Owner Permissions**: Ensure the owner's address is secure and not accessible to unauthorized users.
- **Token Transfer**: Always verify the recipient address before transferring tokens to avoid accidental loss.
- **External Calls**: Exercise caution when interacting with external contracts to prevent re-entrancy attacks.


