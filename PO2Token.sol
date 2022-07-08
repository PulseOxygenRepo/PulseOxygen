// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract PO2Token is ERC20 {
    address public admin;
    constructor() ERC20('PO2 Token', 'PO2'){
     admin = msg.sender;
 }

 function mint(address to, uint amount) external {
     require(msg.sender == admin, 'Only admin');
     _mint(to, amount);
 }

 function burn(uint amount) external {
     _burn(msg.sender, amount);
 }
}
