// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;


// Restrict a feature for only Owners(Deployer) of contract
contract CompanyData {
    struct employee {
        uint8 id;
        string name;
        string role;
    }
    uint8 public eng_count = 0;
    mapping(uint => employee) public Engineer ;

    //                                                       | Condition for execution |
    function set_engg(string memory name, string memory role) public verifyOwner {
        Engineer[eng_count] = employee(eng_count, name, role);
        eng_count += 1;
    }
    
    // -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - 
    // storing deployer's address
    address owner;
    constructor() {
        owner = msg.sender;
    }

    // Modifier are used to check a condition before executing a function
    modifier verifyOwner() {
        require(msg.sender == owner);   // verifying ownership
        _;                             // else transaction ll be reversed =>no gas fee ll be charged
    }
}


// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


// Restrict a feature to only available after specific time
// for eg. betting starts after => 23.10 hrs tomorrow
contract Deal {
    struct employee {
        uint8 id;
        string name;
        string role;
    }
    uint8 public eng_count = 0;
    mapping(uint => employee) public Engineer ;

    //                                                       | Condition for execution |
    function set_engg(string memory name, string memory role) public OnlyWhileOpen {
        Engineer[eng_count] = employee(eng_count, name, role);
        eng_count += 1;
    }

    // -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  - 
    // The timeunit used is epoch Time - total seconds after a point in history

    uint256 openingTime = 1640859800 ;

    modifier OnlyWhileOpen() {
        require(block.timestamp >= openingTime);    // block.timestamp gives current block's timestamp (~current time)
        _;
    }
}