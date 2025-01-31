
// SPDX-License-Identifier:MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    // contoh function
    uint256 myFavoriteNumber;
    string ahmad = "uffi";

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfperson;

    function addArray(uint256 _favoriteNumber, string memory _name) public {
        listOfperson.push(Person(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }

    // mapping
    mapping(string => uint256) public nameTofavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // view and pure

    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }

  

    
    // memory, calldata, storage
    function addPerson(string memory _person) public{
        _person = "hallo";
        listOfperson.push(Person(12, _person));

    }
  

}
