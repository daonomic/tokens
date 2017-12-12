pragma solidity ^0.4.0;


import "../../contracts/NotifyingTokenImpl.sol";


contract ReceiveNotifyTokenMock is NotifyingTokenImpl {
    function ReceiveNotifyTokenMock(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        totalSupply = initialBalance;
    }
}
