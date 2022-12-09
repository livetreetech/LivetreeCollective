// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHashtagNFTCollectiveNFTVault {

    function manager() external returns (address);

    function storeNftDetail(address _from, uint _tokenId) external;

    function setItemForSale(address _nftAddress, uint256 _tokenId) external;

    function isItemOnAuctionOrProposal(uint256 _itemId) external view returns (bool);

    function setItemOnAuctionOrProposal(uint256 _itemId, uint256 _auctionId, uint256 _proposalId) external;

    function setManager(address _manager) external;

    function burnApproved(address _nft, uint256 _tokenId) external view returns (bool);

    function approveBurn(address _nft, uint256 _tokenId) external;

    function setAssetCount(uint256 _count) external returns (uint256);

    function afterBuyout(address _curator) external;

    function getTokens() external view returns (address[] memory);

}
