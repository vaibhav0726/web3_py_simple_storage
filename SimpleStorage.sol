// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    // bydefault the visibility is internal
    uint256 favouriteNumber; // means it is unsigned int with size 256 bits and it has index 0
    bool favouriteBool; // have index 1
    // uint fav2; // this will initialize the fav2 with 0 means default initialization is zero
    // int a = 4;
    // bool favouriteBool = true; //false also
    // string favouriteString = "string";
    // int256 favouriteInteger = -3;
    // address favouriteAddress = 0x051e9Dee6B3272C5bf6f20c79D41b1BEC2d5fcb2;
    // bytes32 favouriteBytes = "cat"; // the byte has the maximum size of 32
    // // and string can be converted byte

    // to store mutliple persons name and its favourite number
    // we use struct
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    // people public person = people({favouriteNumber:2, name:"Noice"}); // this create only one people
    // to create multiple people we use arrays;

    // Arrays of people
    People[] public people; // Dynamic array
    // People[4] public pEople; // fixed size array

    // if i know the name but not the favorite number then to find the numebr we use the mapping data structure
    mapping(string => uint256) public nameTofavoriteNumber; // here it is string value pair

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        // people.push(People({favouriteNumber:_favoriteNumber, name:_name}));
        // another way
        people.push(People(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }

    // function
    function store(uint256 _favoriteNumber) public returns (uint256) {
        favouriteNumber = _favoriteNumber;
        // store(32);
        // uint256 test = 4; // this will show the error
        return favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}
