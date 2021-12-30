// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// ---------- To get the address of the fun executor -------
contract _address {
    // "address" is used to store addresses
    // every smart contract and the executor has some address
    
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

// ---------- Address Payable -------
// Used for transacting. Has 2 members:  .transfer(  ) and .send(  )

/**

contract _addressPayable {
    function transferFund(address payable _address, uint amount) public {  
        _address.transfer(amount);  
    }  
      
    function sendFund(address payable _address, uint amount) public returns(bool){  
        _address.send(amount);
    }  
}

**/