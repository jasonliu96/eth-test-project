// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Candidates {
    mapping(uint256 => Candidate) public candidates;
    uint256 public counter = 0;

    struct Candidate {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addCandidate(string memory _firstName, string memory _lastName)
        public
    {
        incrementCount();
        candidates[counter] = Candidate(counter, _firstName, _lastName);
    }

    function incrementCount() internal {
        counter++;
    }
}
