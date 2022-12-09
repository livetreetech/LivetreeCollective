// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IHashtagNFTCollectiveTimelockController{
    function SetProposers(address[] memory proposers) external;
    function SetExecutors(address[] memory executors) external;
    function SetAdmins(address[] memory admins) external;
    function setGovernor(address governor) external;
}