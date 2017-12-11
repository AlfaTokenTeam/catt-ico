pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Catt is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Catt(address _owner)  UpgradeableToken(_owner) {
    name = "Catt";
    symbol = "Cat";
    totalSupply = 100000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}