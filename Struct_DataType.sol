// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// ---------- To Show the use of struct data type in Solidity -------

contract useofStruct {

    // struct helps to make user defined datatype
    struct employee {
        string name;
        string role;
    }

    // Declaring a variable "Engineer" of type employee
    employee[] public Engineer;

    // fun to store Engineers
    function set_engineer(string memory name, string memory role) public {

        // we use push function to set values in struct data type variables
        // variable.push(datatype(inner var1, inner var2, ...)

        Engineer.push(employee(name, role));
    }
}