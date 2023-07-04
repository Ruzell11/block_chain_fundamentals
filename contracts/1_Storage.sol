// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

//types of data types
//boolean , unit , int , address , bytes , string

contract TestingDataTypes {
    bool hasFavoriteNumber = true;
    uint favoriteNumber = 123;
    string myName = "Ruzell";
    bytes32 favoriteBytes = "cat";
    address myAddress = 0xDe15B3b15177Aee9314941F477C14Cf83D99a5Ef;
}

contract SimpleStorage {
    //initialized as 0 if no initial value
    uint256  favoriteNumber; 
    
    struct People {
        int age;
        string name;
    }

    People[] public people;
    
    function store(uint256 _favoriteNumber) public  {
        favoriteNumber = _favoriteNumber;
    }
    
    function addPerson(string memory _name , int _age) public  {
        People memory newPerson = People({age:_age , name:_name});
        people.push(newPerson);
    }
    function retrievePerson() public view returns (People[] memory){
        return people;
    }

    //no modification is allowed , view , pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }    

    //calldata , memory , storage
    //if no explicit = initialize to storage
    //memory  = temp data
    //calldata = cannot reassign
}

