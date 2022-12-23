// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/**
 * ReserveConsumerV3 contract
 */
contract ReserveConsumerV3 {
    AggregatorV3Interface internal reserveFeed;

    /**
     * Network: Ethereum Mainnet
     * Aggregator: WBTC PoR
     * Address: 0xa81FE04086865e63E12dD3776978E49DEEa2ea4e
     */
    constructor(address _reserveFeed) {
        reserveFeed = AggregatorV3Interface(_reserveFeed);
    }

    /**
     * Returns the latest price
     */
    function getLatestReserve() public view returns (int256) {
        (
            ,
            /*uint80 roundID*/
            int256 reserve, /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/
            ,
            ,

        ) = reserveFeed.latestRoundData();
        return reserve;
    }
}
