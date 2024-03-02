// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicContract {
    // State variable to store an integer value
    uint256 public myNumber;

    // Event to log when the value is updated
    event ValueUpdated(uint256 newValue);

    // Constructor to initialize the state variable
    constructor(uint256 _initialValue) {
        myNumber = _initialValue;
    }

    // Function to update the state variable
    function setNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
        emit ValueUpdated(_newNumber);
    }

    // Function to retrieve the current value
    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}

