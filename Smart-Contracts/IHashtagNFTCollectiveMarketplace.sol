// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IHashtagNFTCollectiveMarketplace {
    enum AuctionState {
        Active,
        ClosedNoWinner,
        ClosedWithWinner,
        ClosedWinnerClaimed
    }

    enum BidState {
        Deposit,
        Withdrawn
    }

    struct NFTAuction {
        address nftAddress;
        uint256 itemId;
        address manager;
        uint256 winBidId;
        address winner;
        uint256 proposalId;
        AuctionState state;
        uint256 timestamp;
    }

    struct AuctionBid {
        address buyer;
        address bidToken;
        uint256 bidAmount;
        BidState state;
        uint256 timestamp;
    }

    function startNFTAuction(address _nftAddress, uint256 _itemId, uint256 _proposalId) external returns (uint256);

    function endNFTAuction(uint256 _auctionId, AuctionState _closingState, uint256 _winBidId) external;

    function auctionState(uint256 _auctionId) external view returns (AuctionState);

    function placeBid(uint256 _auctionId, address _bidToken, uint256 _bidAmount) external payable;

    function transferNFTToWinner(uint256 _auctionId, uint256 _bidId, address _winner) external;

    function refundBid(uint256 _auctionId, uint256 _bidId) external;
}
