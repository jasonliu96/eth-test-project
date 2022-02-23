pragma solidity >=0.5.0;

contract Ballot {
    mapping(uint256 => Candidate) public candidates;
    mapping(uint256 => Voter) public voters;
    uint256 public candidateCounter = 0;
    uint256 public voterCounter = 0;

    struct Candidate {
        uint256 _id;
        string _firstName;
        string _lastName;
    }
    struct Voter {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addCandidate(string memory _firstName, string memory _lastName)
        public
    {
        candidateCounter++;
        candidates[candidateCounter] = Candidate(
            candidateCounter,
            _firstName,
            _lastName
        );
    }

    function addVoter(string memory _firstName, string memory _lastName)
        public
    {
        voterCounter;
        voters[voterCounter] = Voter(voterCounter, _firstName, _lastName);
    }
}
