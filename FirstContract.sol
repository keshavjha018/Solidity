// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// first prog. in solidity
// smart contract for setting and getting a value in/from a variable

contract SetGet {
    string val;                      // String variable declared

    constructor() {
        val = "First Value";        // Initialized a value
    }

    // getter fun
    function get() public view returns(string memory) {     // view => readonly ; return(datatype)
        return val;
    }

    // setter function
    function set(string memory newval) public {               // public => accessible publicly
        val = newval;
    }
}