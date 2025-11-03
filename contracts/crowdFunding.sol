// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crowdFunding {
    string public name;
    string public description;
    uint256 public goal;
    uint256 public deadline;
    address public owner;

    constructor(
        string memory _name,
        string memory _description,
        uint256 _goal,
        uint256 _duration
    ) {
        name = _name;
        description = _description;
        goal = _goal;
        deadline = block.timestamp + (_duration * 1 days);
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 0, "Get some money poor guy.");
        require(block.timestamp < deadline, "Time has ended.");
    }

    function withdraw() public {
        require(msg.sender == owner, "Become the owner XD");
        require(
            address(this).balance >= goal,
            "Your Goal is not reached yet dude."
        );

        uint256 balance = address(this).balance;
        require(balance > 0, "Theres no  money left.");

        payable(owner).transfer(balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
