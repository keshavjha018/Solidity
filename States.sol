// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// smart contract to check & set state (Active/Inactive)

contract state {
    enum states {Active, Inactive, Waiting}
    states public currentstate = states.Waiting ;

    function activate() public {
        currentstate = states.Active;
    }

    function deactivate() public {
        currentstate = states.Inactive;
    }

    function checkstate() public view returns(string memory){
        if (currentstate == states.Active){
            return "Active";
        } 
        else if (currentstate == states.Inactive){
            return "Inactive";
        } 
        else (currentstate == states.Waiting); {
            return "Waiting...";
        }
    }

}