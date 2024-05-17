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
