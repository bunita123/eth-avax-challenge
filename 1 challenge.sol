// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SmartContract{
    uint256 private storedData;

    address public owner;

    constructor(){
        owner=msg.sender;
    }
     
     modifier onlyOwner(){
        require(owner==msg.sender,"Authorized to admin only");
        _;

     }

     function setValue(uint256 _value)public onlyOwner{
        storedData= _value;
     }

     function getValue() public view onlyOwner returns (uint256){
        return storedData;
     }
}
