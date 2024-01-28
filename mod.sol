// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.0/access/Ownable.sol";

contract Prithu is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        Ownable(initialOwner)
        ERC20("Prithu", "Pri")
    {
        _mint(msg.sender, 1 * 10 ** decimals());
    }

    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amountToBeBurned) public override {
    _burn(msg.sender, amountToBeBurned );
}

    function transfer(address to, uint256 amountToBeTransfered) public override returns (bool) {
        _transfer(_msgSender(), to, amountToBeTransfered);
        return true;
    }
}
