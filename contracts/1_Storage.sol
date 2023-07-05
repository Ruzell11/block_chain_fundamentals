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
    //initialized as 0 if no initial value
    //visibility keyword 
    int age; 
    
    struct People {
        int age;
        string name;
    }

    mapping(string => int) public key;

    //people button
    People[] public people;
    //end
    
    function store(int _age) public  {
        age = _age;
    }
    
  
    //no modification is allowed , view , pure
    function retrieve() public view returns(int){
        return age;
    }    

    function addPerson(string memory _name , int _age) public  {
        People memory newPerson = People({age:_age , name:_name});
        people.push(newPerson);
        key[_name] = _age;
    }

    function retrievePerson() public view returns (People[] memory){
        return people;
    }


    //calldata , memory , storage
    //if no explicit data location will initialize to storage
    //memory  = temp data
    //calldata = cannot reassign
}

