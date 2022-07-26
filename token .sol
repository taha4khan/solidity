// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.1/token/ERC20/ERC20.sol";



contract EXPERIMENT_TOKEN  {
string public CTname;
string public CTsymbol;

    constructor(string memory name,string memory symbol) {
        CTname = name;
        CTsymbol =symbol;
        
    }

    function mint(address to, uint256 amount) public  {
        mint(to, amount);
    }

}

