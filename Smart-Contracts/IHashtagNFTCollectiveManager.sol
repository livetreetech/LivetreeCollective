//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IHashtagNFTCollectiveManager {
    function curator() external view returns (address);

    function buyoutFee() external view returns (uint256);

    function settings() external view returns (address);

    function governor() external view returns (address);

    function nftVault() external view returns (address);

    function mint(uint256 _supply) external;

    function mintGovernor() external returns (address);

    function transferOwnershipTo(address newOwner) external;

    function transferCollectiveToken(address curator, address buyer, uint256 exchangeAmount) external;

    function setBuyInManager(address _buyinManager) external;

    function setBuyOutAmount(uint256 amount) external;

    function buyOut(address buyer) external payable;

    function treasuryBurnAmount(address burnAddress, uint256 amount) external;
}
