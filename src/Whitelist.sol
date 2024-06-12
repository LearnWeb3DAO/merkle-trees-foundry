// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Merkle} from "murky/src/Merkle.sol";

contract Whitelist {
    bytes32 public merkleRoot;
    Merkle m = new Merkle();

    constructor(bytes32 _merkleRoot) {
        merkleRoot = _merkleRoot;
    }

    function checkInWhitelist(
        bytes32[] calldata proof,
        uint64 maxAllowanceToMint
    ) public view returns (bool) {
        bytes32 leaf = keccak256(
            abi.encodePacked(msg.sender, maxAllowanceToMint)
        );
        bool newVerified = m.verifyProof(merkleRoot, proof, leaf);
        return newVerified;
    }
}
