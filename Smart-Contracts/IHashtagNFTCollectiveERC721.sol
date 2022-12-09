// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IHashtagNFTCollectiveERC721 {
    function nftVault() external returns (address);
    
    function createCollectible(
        string memory _mediaURL,
        uint256 itemId,
        string memory metadataJsonUrl,
        string memory viewStataUrl,
        string memory picUrl,
        string memory appLinkUrl,
        string memory defaultLicenseURL
    ) external returns (uint256);

    function setLicense(string calldata _url) external;

    function setGovernor(address _governor) external returns (bool);

    function wrapToken(address from, uint256 tokenId)
        external
        returns (uint256);

    function unWrapToken(uint256 tokenId) external returns (address, uint256);

    function setWrappedTokenURI(
        address from,
        uint256 tokenId,
        string calldata uri
    ) external returns (uint256);

    function setCollectiveURI(string memory uri, uint256 itemId) external;

    function setNFTVault(address _nftVault) external;

    function setManager(address _manager) external;

    function setRoyalties(uint256[] memory tokenIds, uint256[] memory royalties)
        external;

    function setRightsOwner(address) external;

    function getRightsOwner() external view returns (address);

    function upgradeRightsOwnerToManager() external;

    function getLicenseInfo()
        external
        view
        returns (string[] memory, string[][] memory);
}
