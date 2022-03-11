

pragma solidity 0.6.0;

contract SimpleStorage {
    // this will be initialized to 0!
    uint256 favNumber;
    bool favBool;

    struct People {
        uint256 favNumber;
        string name;
    }

    People[] public people;

    function Store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public{
        people.push(People(_favNumber, _name}));
    }
    
} 