// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";

contract SERAPH is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable {
    constructor() {
        _disableInitializers();
    }

    function initialize(string memory name, string memory symbol, uint256 initialSupply, address owner) public virtual initializer {
        __ERC20_init(name, symbol);
        __ERC20Burnable_init();
        _mint(owner, initialSupply * (10 ** decimals()));
    }
}
