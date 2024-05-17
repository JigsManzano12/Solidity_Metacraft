# my Token

A simple Token using solidity

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The `MyToken` contract defines a basic token with functionalities to mint and burn tokens. It keeps track of the total supply of tokens and the balances of individual addresses. This contract serves as an introduction to token creation and management in Solidity, providing a foundation for more complex token-based projects in the future.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the details about the token
    string public tokenName = "Jiggie"; // The name of the token
    string public tokenAbbrv = "JGI"; // The abbreviation of the token
    uint public totalSupply = 0; // The total supply of the token, initially set to 0

    // Mapping to store the balances of addresses
    mapping(address => uint) public balances; // Keeps track of the number of tokens each address holds

    // Mint function to create new tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value; // Increase the total supply by the amount of new tokens
        balances[_to] += _value; // Add the new tokens to the specified address's balance
    }

    // Burn function to destroy tokens
    function burn(address _from, uint _value) public {
        // Check if the specified address has enough tokens to burn
        if (balances[_from] >= _value){
            totalSupply -= _value; // Decrease the total supply by the amount of tokens to be burned
            balances[_from] -= _value; // Subtract the burned tokens from the specified address's balance
        }
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile myToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "myToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it in various ways. Firstly, you can query the token balances of specific addresses using the balances function. Secondly, to verify the token abbreviation, you can access the tokenAbbrv variable, which holds the string "JGI". Thirdly, to confirm the token's name, you can retrieve the value stored in the tokenName variable, which is set to "Jiggie". Additionally, you can inquire about the total supply of tokens by accessing the totalSupply variable. Moreover, you have the option to perform actions such as minting and burning tokens. Minting allows you to add tokens to a designated address by calling the mint function with the address and the desired number of tokens as parameters. Conversely, the burn function enables you to reduce or eliminate tokens from an address by specifying the address and the number of tokens to be destroyed. These functionalities collectively offer a comprehensive set of options for managing and interacting with the MyToken contract on the Ethereum blockchain.

## Authors

Gerard Manzano
[@Chill Code](https://www.youtube.com/channel/UCqnpVDK-Ym41W1WDvBMmN6w)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
