pragma solidity ^0.7.0;

import "hardhat/console.sol";

contract GreeterV2 {

  string greeting;

  function initialize(string memory _greeting) public {
    console.log("Initializing a Greeter with greeting:", _greeting);
    greeting = _greeting;
  }

  function greet() public view returns (string memory) {
    return greeting;
  }

  function setGreeting(string memory _greeting) public {
    console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
    greeting = _greeting;
  }

  function resetGreeting() public {
    console.log("Reset greeting from '%s' to default", greeting);
    greeting = 'Hello World';
  }
}