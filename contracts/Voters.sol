// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Voters {
    mapping(uint256 => Voter) public voters;
    uint256 public voterCounter = 0;

    struct Voter {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addVoter(string memory _firstName, string memory _lastName)
        public
    {
        voterCounter++;
        voters[voterCounter] = Voter(voterCounter, _firstName, _lastName);
    }
}
