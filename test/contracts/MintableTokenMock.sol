pragma solidity ^0.4.18;


import "@daonomic/util/contracts/OwnableImpl.sol";
import "../../contracts/MintableTokenImpl.sol";


contract MintableTokenMock is MintableTokenImpl, OwnableImpl {
}