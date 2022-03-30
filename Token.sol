pragma solidity ^0.5.0;

import "./TRC20.sol";
import "./TRC20Detailed.sol";

/**
 * Guinea Pig Coin
 * Simple TRC20 Token GPC, all tokens are pre-assigned to the creator.
 * For later distribution `TRC20` functions.
 */
contract Token is TRC20, TRC20Detailed {

    constructor () public TRC20Detailed("Guinea Pig Coin", "GPC", 18) {
        _mint(msg.sender, 50000000000 * (10 ** uint256(decimals())));
    }
}