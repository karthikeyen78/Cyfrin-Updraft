// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicContract {    
    uint256 public myNumber;
    event ValueUpdated(uint256 newValue);

    constructor(uint256 _initialValue) {
        myNumber = _initialValue;
    }

    function setNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
        emit ValueUpdated(_newNumber);
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}

/* Version Pragma: pragma solidity ^0.8.0;

This line states the version of the Solidity compiler that this code should be compiled with. 

contract BasicContract { ... }

This line declares a new Solidity contract named BasicContract.

uint256 public myNumber;

This declares a state variable named myNumber of type uint256, which is an unsigned integer that can hold 256 bits.
constructor(uint256 _initialValue) { ... }

This is the constructor function, executed only once when the contract is deployed. It initializes the state variable
myNumber with the initial value passed as an argument.

function setNumber(uint256 _newNumber) public { ... }

This function allows anyone to update the value of myNumber. It takes a parameter _newNumber of type uint256,
representing the new value to set myNumber to. After updating the state variable, it emits the ValueUpdated event.

function getNumber() public view returns (uint256) { ... }

This function allows anyone to retrieve the current value of myNumber. It's marked as view,
indicating that it does not modify the contract's state. It simply returns the current value of myNumber. */
