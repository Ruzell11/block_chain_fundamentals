// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
import "contracts/1_Storage.sol";

contract StorageFactory {
    
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public  {
        
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        // Address
        // ABI 
    } 
}