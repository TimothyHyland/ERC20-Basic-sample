pragma solidity ^0.7.3

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';


contract TokenmadewithOpenZeppelin is ERC20{
    constructor() ERC20('Brandoncoin', 'BRC') {
        _mint(msg.sender, 10000000000)
    } 
}

contract Brandoncoin is ERC20{
        address public admin;
    constructor() ERC20('Brandoncoin', 'BRC') {
        admin = msg.sender;
    }
    function mint(address to, uint amount) external {
        require(msg.sender ==admin,'only admin CAN mofucka!!');
        _mint(to, amount);
        }
    } 
contract BrandonCoin is ERC20 {
    constructor() ERC20('Brandoncoin', 'BRC'){}

    function faucet(addressto , uint amount) external {
        _mint(to, amount);
    }
}