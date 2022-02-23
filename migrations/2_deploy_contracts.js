const Candidates = artifacts.require("./Candidates.sol");
const Voters = artifacts.require("./Voters.sol");
const Ballot = artifacts.require("./Ballot.sol");

module.exports = function (deployer) {
  deployer.deploy(Candidates);
  deployer.deploy(Voters);
  deployer.deploy(Ballot);
};
