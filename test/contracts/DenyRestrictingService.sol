pragma solidity ^0.4.23;

import "@daonomic/interfaces/contracts/RestrictingService.sol";

contract DenyRestrictingService is RestrictingService {
    function canTransfer(address _from, address _to, uint _amount) public returns (bool) {
        return false;
    }
}
