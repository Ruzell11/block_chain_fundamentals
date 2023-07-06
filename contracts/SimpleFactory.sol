// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";


contract SimpleFactory {
    SimpleStorage[] private simpleStorageArray;
    uint256 private currentKey;

    function createContract() public {
        SimpleStorage newContract = new SimpleStorage();
        simpleStorageArray.push(newContract);
        currentKey = newContract.retrieveTheCurrentKey();
    }

    function sfStorePerson(string memory _nameOfPerson, int _ageOfPerson) public   {
            SimpleStorage addPeople = simpleStorageArray[currentKey];
            addPeople.storePerson(_nameOfPerson , _ageOfPerson);
    }

    function sfRetrieveAllPerson() public view returns (SimpleStorage.People[] memory) {
        SimpleStorage listOfPeople = simpleStorageArray[currentKey];
        return listOfPeople.retrieveAllPerson();
    }
}

