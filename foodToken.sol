// contracts/FoodToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FoodToken is ERC20 {
    int initialSupply=10000000;
    constructor() ERC20("FOOD", "FOOD") {
        _mint(msg.sender, initialSupply);
    }
    function decimals() public view virtual override returns (uint8) {
  return 0;
}
}
