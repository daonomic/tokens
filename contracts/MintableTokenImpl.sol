pragma solidity ^0.4.18;

import "@daonomic/util/contracts/Ownable.sol";
import "@daonomic/interfaces/contracts/MintableToken.sol";
import "./TokenImpl.sol";

contract MintableTokenImpl is TokenImpl, MintableToken, Ownable {
    /**
     * @dev Function to mint tokens
     * @param _to The address that will receive the minted tokens.
     * @param _amount The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address _to, uint256 _amount) onlyOwner public returns (bool) {
        totalSupply = totalSupply.add(_amount);
        balances[_to] = balances[_to].add(_amount);
        emitMint(_to, _amount);
        emitTransfer(address(0), _to, _amount);
        return true;
    }

    function emitMint(address _to, uint256 _value) internal {
        Mint(_to, _value);
    }
}