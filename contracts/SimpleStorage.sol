// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

//types of data types
//boolean , unit , int , address , bytes , string
//EVM , Ethereum Virtual Machine


// contract TestingDataTypes {
//     bool hasFavoriteNumber = true;
//     uint favoriteNumber = 123;
//     string myName = "Ruzell";
//     bytes32 favoriteBytes = "cat";
//     address myAddress = 0xDe15B3b15177Aee9314941F477C14Cf83D99a5Ef;
// }

contract SimpleStorage {

    uint256 private currentKey;
    
    struct People {
        uint256 key;
        string nameOfPeople;
        int ageOfPeople;
    }

    People[] private people;

    mapping(uint256 => People) nameOfPeople;

    function retrieveTheCurrentKey() public view returns(uint256){
        return currentKey;
    }

    function storePerson(string memory _nameOfPeople , int _ageOfPeople) public virtual  {
      People memory newPerson = People(currentKey,_nameOfPeople , _ageOfPeople);
      people.push(newPerson);
      nameOfPeople[currentKey] = newPerson;
      currentKey++;
    }

    function retrieveAllPerson() public view returns(People[] memory){
        return people;
    }

     function retrieveSinglePerson(uint256 _keyIdentifier) public view returns (People memory) {
        return nameOfPeople[_keyIdentifier]; // Retrieve the name using the keyIdentifier
    }
}