pragma solidity ^0.8.0;
import "./Storage.sol";

contract Bank is Storage{

    constructor() Ownable() ReentrancyGuard(){

    }

    function deposit() public payable{
        require(msg.value>0);
        mapping_address_uint["balances"][msg.sender] += msg.value;
    }

    function withdraw(uint amount) public nonReentrant {
        require( mapping_address_uint["balances"][msg.sender] >= amount);
        mapping_address_uint["balances"][msg.sender] -= amount;
        msg.sender.call{value : amount}("");

    }

    function transfer(address recipient, uint amount) public nonReentrant returns(bool){
        require( mapping_address_uint["balances"][msg.sender] >= amount);
        mapping_address_uint["balances"][msg.sender] -= amount;
        mapping_address_uint["balances"][recipient] += amount;
        (bool success,) = recipient.call{value : amount}("");
        return success;

    }




}