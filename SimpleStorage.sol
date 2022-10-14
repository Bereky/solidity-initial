// SPDX-License-Identifier: MIT

// defining the version of solidity
pragma solidity ^0.8.7;


// defining a contract
contract SimpleStorage {
    
    // null is always zero in baby sol
    uint256 public myRating;

    
    // creating a new DT using struct
    struct People {
        uint256 favNo;
        string name;
    }

    // defining a sample struct
    People public person = People({favNo: 99, name: "Falcon"});

    //mapping variable
    mapping(string => uint256) public nameToFavNo;

    // declaring array
    People[] public people;

    //default public function
    // store a variable
    function store(uint256 _myRating) public {
        myRating = _myRating;
    }

    // function to add person
    // to an array
    function addPerson(string memory _name, uint256 _favNo) public {
        people.push(People(_favNo, _name));
        nameToFavNo[_name] = _favNo;
    }

    // pure and view functions
    // return a variable
    // no gas fee on applied to unless they are called by gas calling function
    function retriveRating() public view returns(uint256){
        return myRating;
    }


}

// my contract address 
// 0xd9145CCE52D386f254917e481eB44e9943F39138