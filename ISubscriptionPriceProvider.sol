// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface ISubscriptionPriceProvider {
    /**
     * Return the number of Arthera coins (in wei) for the provided USD value (in cents)
     */
    function centsToArthera(uint256 usdValue) external view returns (uint256);
}
