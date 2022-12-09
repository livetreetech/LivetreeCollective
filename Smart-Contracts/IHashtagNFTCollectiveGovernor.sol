// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IHashtagNFTCollectiveGovernor{
    function requestClaimRoyalty(address receiver, uint256 amount, string calldata description) external returns(uint256);
    function requestSetBuyOutPrice(uint256 amount, string calldata description) external returns(uint256);
    function requestSetLicense(string calldata licenceURI, string calldata description) external returns(uint256);
    function requestBuyout(uint256 buyoutFee, string calldata description) external payable returns(uint256);
    function requestSetProposalThreshold(uint256 newProposalThreshold, string calldata description) external returns(uint256);
    function requestUpdateQuorumNumerator(uint256 newQuorumNumerator, string calldata description) external returns(uint256);
    function requestNFTSale(address nftAddress, uint256 itemId, string calldata description) external returns(uint256);
    function refundBuyoutFee(uint256 proposalId) external;
    function cancelProposal(address[] memory targets,uint256[] memory values, bytes[] memory calldatas,bytes32 descriptionHash) external returns(uint256);
    function HashtagNFTCollectiveManager() external returns (address);
}
