// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/PriceConsumerV3.sol";
import "./mocks/MockV3Aggregator.sol";

/**
 * PriceConsumerV3Test contract
 */
contract PriceConsumerV3Test is Test {
    uint8 public constant DECIMALS = 18;
    int256 public constant INITIAL_ANSWER = 1 * 10**18;
    PriceConsumerV3 public consumer;
    MockV3Aggregator public mockV3Aggregator;

    /**
     * setUp test
     */
    function setUp() public {
        // create contract
        mockV3Aggregator = new MockV3Aggregator(DECIMALS, INITIAL_ANSWER);
        consumer = new PriceConsumerV3(address(mockV3Aggregator));
    }

    /**
     * get price feed
     */
    function testGetPriceFeed() public {
        int256 price = consumer.getLatestPrice();
        assertTrue(price == INITIAL_ANSWER);
    }
}
