pragma solidity ^0.4.18;


import "../../contracts/BurnableTokenImpl.sol";


contract BurnableTokenMock is BurnableTokenImpl {
	function BurnableTokenMock(address initialAccount, uint initialBalance) public {
		balances[initialAccount] = initialBalance;
		totalSupply = initialBalance;
	}
}
