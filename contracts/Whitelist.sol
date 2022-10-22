// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Whitelist {
    uint256 public maxWhitelistAddresses;
    mapping(address => bool) public whitelistedAddresses;
    uint256 public numAddressesWhitelisted;

    constructor(uint256 _maxWhitelistAddresses){
        maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    function whitelistAddress() public {
        require(!whitelistedAddresses[msg.sender], "address already whitelisted");
        require(numAddressesWhitelisted < maxWhitelistAddresses, "more addresses can't be added, limit reaached");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted = numAddressesWhitelisted + 1;
    }
}

