// contracts/FoodToken.sol
// SPDX-License-Identifier: MIT
//compiler version declaration.
pragma solidity ^0.8.0;

// import ERC20 contract to use all standard funcitons and libraries
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// extending the implementation of erc20 as foodToken
contract FoodToken is ERC20 {
    // setting the initial supply of the token
    int initialSupply=10000000;

    // one time genesis minting of initial supply = 10000000 FOOD token with ticker symbol FOOD
    constructor() ERC20("FOOD", "FOOD") {
        // minting and transfer of token to sender of the message using standard implementation of _mint
        _mint(msg.sender, initialSupply);
    }

    // overriding the standard decimal 18 with 0 decimals
    // 0 decimals means token is not divisible
    function decimals() public view virtual override returns (uint8) {
  return 0;
}
}
