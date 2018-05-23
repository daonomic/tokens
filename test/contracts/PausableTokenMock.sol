pragma solidity ^0.4.23;


import "../../contracts/PausableToken.sol";
import "@daonomic/util/contracts/OwnableImpl.sol";


contract PausableTokenMock is OwnableImpl, PausableToken {
	constructor(address initialAccount, uint initialBalance) public {
		balances[initialAccount] = initialBalance;
		total = initialBalance;
	}
}
