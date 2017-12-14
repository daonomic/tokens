pragma solidity ^0.4.18;


import "../../contracts/PausableToken.sol";
import "@daonomic/util/contracts/OwnableImpl.sol";


contract PausableTokenMock is OwnableImpl, PausableToken {
	function PausableTokenMock(address initialAccount, uint initialBalance) public {
		balances[initialAccount] = initialBalance;
		totalSupply = initialBalance;
	}
}
