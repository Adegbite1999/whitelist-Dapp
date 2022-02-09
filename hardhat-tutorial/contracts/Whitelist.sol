//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

    // create a mapping of whitedlisted address
    mapping(address => bool) public whitelistedAddresses;
      uint8 public numAddressesWhitelisted;
constructor(uint8  _maxWhitelistedAddresses){
    maxWhitelistedAddresses = _maxWhitelistedAddresses;
}
// true

function addAddressToWhitelist() public{
    require(!whitelistedAddresses[msg.sender], "Sender has already been taken");
    require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses can't be added, limit reached.");
    whitelistedAddresses[msg.sender] = true;
    numAddressesWhitelisted +=1;
}


}