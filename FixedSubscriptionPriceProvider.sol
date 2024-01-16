// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./ISubscriptionPriceProvider.sol";

contract FixedSubscriptionPriceProvider is ISubscriptionPriceProvider {
    using SafeMath for uint256;

    // 1 AA = 50 cents
    uint256 internal constant AA_PRICE = 50;

    function centsToArthera(uint256 cents) public pure returns (uint256) {
        uint256 aa = cents.div(AA_PRICE);
        return aa.mul(1 ether);
    }
}
