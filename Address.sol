// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// ---------- To get the address of the fun executor -------

// "address" is used to store addresses
// every smart contract and the executor has some address

contract addr {
    
    // function to get address
    function getAddress () public view returns(address) {
        return msg.sender;
    }

    // Method 2
    function getAddress_2() public view returns(address){
        address myaddress = address(this);
        return myaddress;
    }
}