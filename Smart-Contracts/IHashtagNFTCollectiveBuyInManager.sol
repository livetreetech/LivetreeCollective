//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

enum BuyInOfferState {
    PENDING,
    ACCEPTED,
    EXPIRED
}

struct BuyInOffer {
    string offerId;
    uint256 offerAmount;
    uint256 buyAmount;
    uint256 expiry;
    BuyInOfferState state;
    address buyer;
    address offerToken;
}

interface IHashtagNFTCollectiveBuyInManager {
    function setAutosaleSEDCSettings(
        uint256 _autoSaleRatioNumerator,
        uint256 _autoSaleRatioDenominator,
        uint256 _autoSaleLimit
    ) external;

    function makeBuyInOffer(
        string memory _offerId,
        uint256 _buyAmount,
        uint256 _offerAmount,
        uint256 _expiry,
        address _offerToken
    ) external payable;

    function acceptBuyInOffer(string memory _offerId) external;

    function refundBuyInOffer(string memory _offerId) external; // itemId needed?
}
