pragma solidity ^0.4.23;


import "../../contracts/NotifyingTokenImpl.sol";


contract ReceiveNotifyTokenMock is NotifyingTokenImpl {
    constructor(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        total = initialBalance;
    }
}
