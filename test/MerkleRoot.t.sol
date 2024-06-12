// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {Whitelist} from "../src/Whitelist.sol";

contract CounterTest is Test {
    Whiteilst public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function encodeLeaf(address _address, uint64 _spots) public returns (bytes32) {
        return abi.encodePacked(_address, _spots);
    }


    function test_MerkleRoot() public {
        Merkle m
        
    }

    
}
