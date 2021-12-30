// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract useofMapping {
    struct employee {
        uint8 id;
        string name;
        string role;
    }
    
    // Unlike arrays, Mapping doesnt have index to access its elements,
    // so. we use int variable to store indices.
    uint8 public eng_count = 0;

    // Mapping in Solidity acts like a hash table or dictionary in any other language.
    // These are used to store the data in the form of key-value pairs.

    mapping(uint => employee) public Engineer ;

    function set_engg(string memory name, string memory role) public {

        // variable[index]  = datatype(var1, var2, ...)
        Engineer[eng_count] = employee(eng_count, name, role);

        eng_count += 1;
    }
}