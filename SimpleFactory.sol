// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleFactory{

    SimpleStorage[] public listOfsimpleStorageContract;

    function createSImpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfsimpleStorageContract.push(newSimpleStorageContract);
    }

    // menambhakan favoritenumber
    function sfStore(uint256 _SimpleStorageIndex, uint256 _newSimpleStorageFavoriteNumber) public {
        listOfsimpleStorageContract[_SimpleStorageIndex].store(_newSimpleStorageFavoriteNumber);
    }

    function sfGet(uint256 _SimpleStorageIndex) public view returns(uint256){
        return listOfsimpleStorageContract[_SimpleStorageIndex].retrive();
    }
}