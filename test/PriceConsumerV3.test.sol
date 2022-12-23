// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/PriceConsumerV3.sol";

contract PriceConsumerV3Test is Test {
    PriceConsumerV3 public consumer;

    /**
     * setUp test
     */
    function setUp() public {
        consumer = new PriceConsumerV3();
    }

    /**
     * get price feed
     */
    function testGetPriceFeed() public {
        uint256 price = consumer.getLatestPrice();
        assertEq(price, 1);
    }
}
