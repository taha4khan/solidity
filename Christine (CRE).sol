// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.1/token/ERC20/ERC20.sol";

contract Christine is ERC20 {
    constructor() ERC20("Christine", "CRE") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }


}
