// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IStrategy {
    function want() external view returns (IERC20);
    function balanceOf() external view returns (uint256);
    function beforeDeposit() external;
    function deposit() external;
    function withdraw(uint256) external;
    function vault() external returns (address);
    function retireStrat() external returns (address);
}
