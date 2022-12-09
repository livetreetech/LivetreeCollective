// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

struct NFTInfo {
    address token;
    string name;
    string symbol;
    uint256 createdAt;
    uint256 updatedAt;
}

struct MintCollectiveParams {
    uint256 itemId;
    uint256 totalSupply;
    uint256 listPrice;
    uint256 fee;
    string erc20TokenName;
    string erc20TokenSymbol;
    string erc20TokenLogoUrl;
    string nftMediaURL;
    string nftMetadataJsonUrl;
    string nftViewStatsJsonUrl;
    string nftPictureUrl;
    string nftAppLinkUrl;
    uint256 ownerInitialPercentage;
    uint256 buyerPercentage;
    string branchBuyerUsername;
    uint256 buyerItemId;
    string buyerOffer;
}

struct MintItemParams {
    uint256 itemId;
    string erc20TokenName;
    string erc20TokenSymbol;
    string nftMetadataJsonUrl;
    string nftViewStatsJsonUrl;
    string nftPictureUrl;
    string nftAppLinkUrl;
}

interface IHashtagNFTCollectiveFactoryProxy {

    function livetree() external view returns (address);

    function seedCToken() external view returns (address);

    function vaultCount() external view returns (uint256);

    function marketplace() external view returns (address);

    function votingPeriod() external view returns (uint256);

    function proposalThreshold() external view returns (uint256);

    function mint(MintCollectiveParams memory params) external returns (uint256);

    function mintForUser(MintCollectiveParams memory params, string memory creator) external returns(uint256);

    function transferCollective(uint256 itemId, address newOwner) external;

    function ImportExistingNfts(address[] calldata contracts, uint256[] calldata tokenIds, MintCollectiveParams memory params) external returns(uint256);

    function mintNFT(MintItemParams memory params) external;

    function getRoyaltyItemManagerSettings(uint256 id) external view returns (uint256, uint256);

    function pause() external;

    function unpause() external;

    function isCollectivePaused(address _manager, uint256 _version, uint256 _contractIndex) external returns (bool);

    function setResolver(address _resolver) external;

    function setSeedCToken(address seedc) external;

}
