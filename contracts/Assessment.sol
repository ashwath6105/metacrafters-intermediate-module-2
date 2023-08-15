// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {

    address payable public owner;
    uint256 public balance;

    constructor(uint256 initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns(uint256) {
        return balance;
    }

    function factorial(uint256 n) public  {
        uint256 result = 1;
        for (uint256 i = 1; i <= n; i++) {
            result *= i;
        }
        balance = result;
    }

    function power(uint256 base, uint256 exponent) public {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
        balance = result;
    }
}
