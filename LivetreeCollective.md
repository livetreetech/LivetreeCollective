# Livetree #Collective Smart Contracts

Hashtag NFT Collective Documentation & Specification

|                |                                           |
|----------------|-------------------------------------------|
| Author         | Ashley Turing                             |
| Status         | Initial Commit                            |
| Created        | 2021-12-27                                |

## Introduction

Livetree’s Hashtag NFT Collective suite of 11 smart contracts are a result of many years of work to realise the ambition of decentralizing social networks. The ultimate goal is to empower creators to earn more and collectively address some of the world’s most challenging problems, from climate change to global inequality. This repo contains the smart contracts that together define a #Collective. A collective can be thought of as a DAO with extended functionality specifically tailored to maximise income for creators and provide a fundamental paradigm shift in how social networks operate.  Our hope by publishing these smart contracts openly is threefold:  

1. To enable creators to earn more, have a more direct collaborations with their collective’s members and to bring about positive social change  
2. To provide transparency, facilitate functional extensions, address any bugs or security concerns through the open-source community  
3. To eventually enable creators to switch social network (front ends) without any intervention  

The smart contracts contain several innovations in their design and architecture and are detailed in the specification.

Hash-tagging (#) media has become a defacto standard across Web 2.0 social networks for not only garnering support (e.g. #BLM, etc) but also more covert surveillance techniques. The introduction of a decentralised hashtag EIP standard may help harness the power of media in a decentralised fashion to bring about the change Web 3.0 promises, from controlling decentralised treasuries focused on particular hashtag topics, to empowering artists by enabling true legal ownership and licensing capability to levelling up poorer and less privileged by being able to borrow NFT assets. The hope is by introducing this standard we can bring about real world change that Web 3.0 has for so long promised and is now capable of realising.

1. The goal of this EIP open-source standard protocol enables users to collect royalties from associated ENS names
2. The ENS names are further used the collect
3. ability to switch to different providers, such as, a different social network other than Livetree via their own decentralised wallet completely without intervention from Livetree. This empowers users and provides a new level of control over social posts and extends the earning capabilities of their social posts to be extended across potentially multiple social networks, as royalties for social posts can be accumulated from multiple websites into the same decentralised collective.
4. The Hashtag NFT Collective EIP standard comes about as a result of many years of work to help realise the overarching ambition of web 3.0, namely, to empower people to collectively address some of the world’s most challenging problems such as climate change, global inequality to domestic abuse.  Hash-tagging (#) media has become a defacto standard across Web 2.0 social networks for not only garnering support (e.g. #BLM, etc) but also more covert surveillance techniques. The introduction of a decentralised hashtag EIP standard may help harness the power of media in a decentralised fashion to bring about the change Web 3.0 promises, from controlling decentralised treasuries focused on particular hashtag topics, to empowering artists by enabling true legal ownership and licensing capability to leveling up poorer and less privileged by being able to borrow NFT assets. The hope is by introducing this standard we can bring about real world change that Web 3.0 has for so long promised and is now capable of realising.

## Abstract
The smart contracts, such as NFTs that support ERC-721 and ERC-1155 interfaces, to deposit, cashout and withdraw royalty and retrieve royalty payment information to be paid to each participants of the collective. This is intended for NFT marketplaces that want to support the ongoing benefit the participant of the collectives.

Addresses(users or contracts) can deposit the royalty to the treasury, cashout his/her royalty amount or withdraw to specific address(with a permission or through DAO) and retrieve the royalty information.

The royalty payment information for participants of the collective is decided by user share of the collective token.

1. Royalty treasuries; NFT today have no standard way to collect and pay out royalties. Some attempts have been made in the form of marketplace sales however provision for continual royalties to be paid along with flexibility to accommodate multiple royalty payout structures is notably missing. Building on extensive experience within the complex royalty structures of  film and TV I realised that trying to enforce specific rules for royalties would not be sufficient, a more flexible approach I believe is needed with a simple interface to support the deposit and payout with the ability to manage collections of NFTs.
2. Governance: once the treasury accumulates how should it be governed, this builds on standard DAO Openzepplin governor and adds a few simple extensions for specific proposal types.
3. Fractional Ownership: Being able to own a percentage stake  of one or more NFT assets.
4. Unique Addressing NFT: In our case, each hashtag needs to be unique, however, much as with all other aspects of this EIP it can be used in many different ways. This builds on the work of Unstoppable domains and the Ethereum-Naming-Service (ENS).

The EIP proposal is defined as several interfaces that extend NFTs providing the functionality described above points. The NFTs are fractionalised into ERC20 tokens with a treasury governed by a standardised Governor contract (the defacto DAO openzepplin standard) . People can buy into the DAO and they are allocated a percentage ownership in the form of ERC20 fractions. They can cash those fractions into the treasury or use it to vote or trade the ERC20s.

Technically this EIP standard addresses a number of functional “deficiencies” relating to NFTs (both 1155 and 721 standards, referred to as NFTs in this document) while remaining backward compatible. This EIP standard has been designed to specifically try to address the following:

1. Royalty treasuries; NFT today have no standard way to collect and pay out royalties. Some attempts have been made in the form of marketplace sales however provision for continual royalties to be paid along with flexibility to accommodate multiple royalty payout structures is notably missing. Building on extensive experience within the complex royalty structures of  film and TV I realised that trying to enforce specific rules for royalties would not be sufficient, a more flexible approach I believe is needed with a simple interface to support the deposit and payout with the ability to manage collections of NFTs.
2. Governance: once the treasury accumulates how should it be governed, this builds on standard DAO Openzepplin governor and adds a few simple extensions for specific proposal types.
3. Fractional Ownership: Being able to own a percentage stake  of one or more NFT assets.
4. Unique Addressing NFT: In our case, each hashtag needs to be unique, however, much as with all other aspects of this EIP it can be used in many different ways. This builds on the work of Unstoppable domains and the Ethereum-Naming-Service (ENS).

The EIP proposal is defined as several interfaces that extend NFTs providing the functionality described the above points. The NFTs are fractionalised into ERC20 tokens with a treasury governed by a standardised Governor contract (the defacto DAO openzepplin standard) . People can buy into the DAO and they are allocated a percentage ownership in the form of ERC20 fractions. They can cash those fractions into the treasury or use it to vote or trade the ERC20s.

## Motivation
This standard extends NFTs, to signal a royalty amount paid into a treasury owned by stakeholders. Stakeholders are defined as both the NFT creator and/or the fractionalised token (ERC20) holders. Every time the NFT or collection of NFTs generates royalties in the form of, but not limited to, pay-per-view (rental access), donations (gifting), e-commerce (merch sales), or subscription the treasury is credited. The stakeholders can then either redeem there relative dividend percentage of the treasury or trade their ERC20 fractions as they deem fit. In order to stay compatible with existing NFT marketplaces who do not support this EIP standard the treasury stakeholders can be bought out which effectively triggers a buy-out event and releases the NFTs to owner, whereabouts, the NFTs function as normal NFT contracts which may or may not support the EIP standard for royaltyInfo().

This standard is intended for marketplaces and social network to address some fairly basic requirements of creators, artists and change makers in the context of blockchain for good. Specifically being able to legally own the works, being able to collect royalties, have fractional ownership and having a collection of NFTs. Hashtag NFT Collective therefore support artists, and creators to help bring about real world change. Especially through these recent hard times, people have started to wake up to the crisis we face with the environment, with the failings of our governments and with the lack of global equality (the us and them mentality).

The design is to maximize the flexibility and resolve around the name of the collective.

- **[Step1]** #Name Resolution  
  Resolves the name of the collective using the **HashtagNFTCollectiveResolver**.  
  By using the **ResolveURI** function of the **HashtagNFTCollectiveResolver** contract, you can get the collective’s ERC20 token(**HashtagNFTCollectiveManager**) address.

- **[Step 2]** Royalty Deposit
  Deposits royalties for a particular collective using the **HashtagNFTCollectiveTreasury**.  
  By using the **DepositRoyalty** function of the **HashtagNFTCollectiveTreasury** contract, you can deposit royalties for the collective(**HashtagNFTCollectiveManager**) - the address you’ve got on the [_Step1_].
  
- **[Step 3]** Migration to another Social Network
  Owner of the collective would transfer ownership of the collective (collective’s contract) to Social Network X.  
  **HashtagNFTCOllectiveManager**, **HashtagNFTCollectiveBuyInManager**, **HashtagNFTCollectiveERC721**.

- **[Step 4]** Upgrade migrated collective’s contracts
  You can upgrade the contracts of the collective you’ve upgraded in the [_Step 3_].

## Specification

| # | Smart Contract | Description | Interacts with |
|---|----------------|-------------|----------------|
| 1 | HashtagNFTCollectiveTreasury | The royalty manager for all collectives minted.<br/>It collates royalties paid to the projects & facilities royalty cashout for project stakeholders. | **HashtagNFTCollectiveManager**: collates royalties paid into projects for stakeholders access.<br/>**HashtagNFTCollectiveGovernor**: provides interface for requestClaimRoyalty proposals, enabling withdrawal of royalties to vetted receiver’s address. |
| 2 | HashtagNFTCollectiveFactoryProxy | Factory for NFT & respective collectives. | **HashtagNFTCollectiveManager**: facilitates minting of collective tokens.<br/>**HashtagNFTCollectiveBuyInManager**: facilitates creation of buy-in offers.<br/>**HashtagNFTCollectiveNFTVault**: manages the collection’s NFTs.<br/>**HashtagNFTCollectiveERC721**: facilitates minting of new NFT assets. |
| 3 | HashtagNFTCollectiveBuyInManager | Manager that enables fractional ownership feature for NFT assets and collectives. | **HashtagNFTCollectiveManager**: represents the fractional ownership of the collective, being transferred between users through buy-in offer make/accept/refund. |
| 4 | HashtagNFTCollectiveManager | ERC20 token contract which represents the fractional ownership of the collective. | **HashtagNFTCollectiveBuyInManager**: facilitates the transferring collective tokens after buy-in offer is accepted.<br/>**HashtagNFTCollectiveGovernor**: provides the interface to set buy-out fee and to complete buy-out the collective. |
| 5 | HashtagNFTCollectiveNFTVault | ERC721Receivable contract which holds the collective’s NFT assets. | **HashtagNFTCollectiveERC721**: provides an interface to transfer a collective’s NFT to the marketplace through governor or collective owner. |
| 6 | HashtagNFTCollectiveGovernor | Provides DAO functionality for consensus on actions pertaining to the NFT project. | **HashtagNFTCollectiveTreasury**: provides interface to request royalty withdrawal to a specific address.<br/>**HashtagNFTCollectiveManager**: provides interface to request to set buy-out price of the collective and to complete buy-out the collective.<br/>**HashtagNFTCollectiveERC721**: provides interface to request to update the copyright license of the collective’s NFTs.<br/>**HashtagNFTCollectiveNFTVault**: provides interface to request to transfer NFT to the marketplace. |
| 7 | HashtagNFTCollectiveERC721 | NFT contract for holding assets & legal license data. | None |
| 8 | HashtagNFTCollectiveResolver | Provides Naming resolution functionality to retrieve HashtagNFTCollectiveManager information of HashtagNFTCollectiveERC721 | None |
| 9 | HashtagNFTCollectiveMarketplace | The smart contract used to trade the NFT assets. | **HashtagNFTCollectiveERC721**: facilitates the transferring the NFT to auction winner after the auction ends.<br/>**HashtagNFTCollectiveTreasury**: facilitates the depositing royalty to the NFT’s collective.

## HashtagNFTCollectiveFactoryProxy

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | mint | **Inputs**<br/>MintCollectiveParams memory params(properties explained below)<br/>_uint256 itemId_ - id of the NFT to be minted<br/>_uint256 totalSupply_ - total supply of collective token<br/>_uint256 listPrice - deprecated_<br/>_uint256 fee - deprecated_<br/>_string erc20TokenName_ - collective token’s name<br/>_string erc20TokenSymbol_ - collective token’s symbol<br/>_string erc20TokenLogoUrl_ - collective token’s logo url<br/>_string nftMediaURL_ - NFT media URL<br/>_string nftMetadataJsonUrl_ - NFT metadata JSON URL<br/>_string nftViewStatsJsonUrl_ - NFT view stats JSON URL<br/>_string nftPictureUrl_ - NFT picture URL<br/>_string nftAppLinkUrl_ - App link to the NFT<br/>_uint256 ownerInitialPercentage - deprecated_<br/>_uint256 buyerPercentage - deprecated_<br/>_string branchBuyerUsername_ - owner branch user name<br/>_uint256 buyerItemId - deprecated_<br/>_string buyerOffer - deprecated_<br/>**Outputs**<br/>uint256 - number of collectives minted by far<br/>emits **Mint** event | Provides an interface for users to mint an NFT project & its corresponding collective token (**HashtagNFTCollectiveManager**), NFT (**HashtagNFTCollectiveERC721**), NFTVault (**HashtagNFTColectiveNFTVault**), BuyInManager (**CollectiveNFTCollectiveBuyInManager**). |
| 2 | mintForUser | **Inputs**<br/>MintCollectiveParams memory params<br/>_string memory creator_ - creator branch user name<br/>**Outputs**<br/>none | Provides an interface for backend server to mint an NFT project & related smart contracts on the behalf of the user. Uses mint function. Only backend service can call. |
| 3 | transferCollective | **Inputs**<br/>_uint256 itemId_ - Index of the collective to transfer<br/>_address newOwner_ - User address to be the owner of the collective<br/>**Outputs**<br/>none | Transfer collective (minted by backend server) to the new owner. Only backend service call call. |
| 4 | mintNFT | **Inputs**<br/>MintItemParams calldata params(properties explained below)<br/>_uint256 itemId_ - id of the NFT to be minted<br/>_string erc20TokenName_ - ERC20 token name of the collective of the NFT to be minted in<br/>_string erc20TokenSymbol_ - ERC20 token symbol of the collective for the NFT to be minted in<br/>_string nftMetadataJsonUrl_ - NFT metadata JSON URL<br/>_string nftViewStatsJsonUrl_ - NFT view stats JSON URL<br/>_string nftPictureUrl_ - NFT Picture URL<br/>_string nftAppLink_ - App link to the NFT<br/>**Outputs**<br/>none<br/>emits **MintNFT** event | Provides an interface for the users to mint an NFT in the collective. |
| 5 | ImportExistingNfts | **Inputs**<br/>_address[] calldata contracts_ - Addray of the existing NFT contracts to import<br/>_uint256[] tokenIds_ - Ids of the existing NFTs to import<br/>**Outputs**<br/>uint256 - number of collectives minted by far | Import existing NFTs by using NFT contract addresses and ids. |
| 6 | setContractAddresses | **Inputs**<br/>_address _settings_ - settings logic address<br/>_address manager_ - collective token logic address<br/>_address _nftVault_ - NFTVault logic address<br/>_address timelockController_ - timelock controller logic address<br/>_address _governor_ - governor logic address<br/>**Outputs**<br/>none | Sets the logic contract address of settings, collective token, nft vault, timelock controller, governor.<br/>Only owner can call. |
| 7 | setContractVersions | **Inputs**<br/>_uint256[] calldata _contractVersions_ - array of the versions of the logic contracts<br/>**Outputs**<br/>none | Sets the logic contract versions - settings, collective token, nft vault, timelock controller, governor.<br/>Only owner can call. |
| 8 | setGovernorSettings | **Inputs**<br/>_uint256 _votingPeriod - default voting period<br/>_uint256 _proposalThreshold - default proposal threshold<br/>_uint256 _nftDefaultLicenseURL - default copyright license URL for NFTs<br/>**Outputs**<br/>none | Sets the governor settings (voting period, proposal threshold, default copyright license URL).<br/>Only owner can call. |
| 9 | userTokenExists<br/>_(view)_ | **Inputs**<br/>_address user_ - user wallet address<br/>_string memory name_ - collective token name<br/>_string memory symbol_ - collective token symbol<br/>**Outputs**<br/>bool, uint256 - returns index in the user's NFT list, [true, index] if exists, [false, 0] if not exists. | Check if the user owns the collective |
| 10 | setResolver | **Inputs**<br/>_address _resolver_ - resolver contract address<br/>**Outputs**<br/>none | Sets the resolver contract address.<br/>Only owner can call. |
| 11 | setSeedCToken | **Inputs**<br/>_address _token_ - SEDC token address<br/>**Outputs**<br/>none | Sets the SEDC token address.<br/>Only owner can call. |
| 12 | setAssetCount | **Inputs**<br/>_uint256 count_ - NFT count of the collective<br/>_uint256 itemId_ - NFT item id<br/>**Outputs**<br/>none | Sets the NFT count of the collective where item exists.<br/>Only owner can call. |
| 13 | pauseCollective | **Inputs**<br/>_address _manager_ - collective ERC20 token address<br/>_bool _paused_ - true to pause, false to unpause | Pause / Unpause a specific collective.<br/>Only owner can call. |
| 14 | isCollectivePaused<br/> | **Inputs**<br/>_address _manager_ - collective's ERC20 token address<br/>_uint256 _version_ - latest contract version the collective should be<br/>_uint256 _contractIndex_ - index of the logic contract(e.g. 0 for treasury) | Returns false if the factory or collective is paused or contract needs to be upgraded. |
| 15 | pause | **Inputs**<br/>none<br/>**Outputs**<br/>none | Pause the factory proxy contract.<br/>Only owner can call. |
| 16 | unpause | **Inputs**<br/>none<br/>**Outputs**<br/>none | Unpause the factory proxy contract.<br/>Only owner can call. |

## HashtagNFTCollectiveBuyInManager

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | setAutosaleSEDCSettings | **Inputs**<br/>_uint256 _autoSaleRatioNumerator_ - collective token/SEDC conversion ratio numerator<br/>_uint256 _autoSaleRatioDenominator_ - collective token/SEDC conversion ratio denominator<br/>_uint256 _autoSaleLimit_ - Collective token amount that can be auto sold using SEDC token<br/>**Outputs**<br/>none | Sets the SEDC auto sale conversion ratio and auto sale limit.<br/>Only collective curator can call. |
| 2 | makeBuyInOffer<br/>_(payable)_ | **Inputs**<br/>_string memory _offerId_ - Buy-in offer id generated on the backend side<br/>_uint256 _buyAmount_ - Collective token amount user wants to buy<br/>_uint256 _offerAmount_ - native/SEDC/ERC20 token amount user offers<br/>_uint256 _expiry_ - Buy-in offer’s expiry timestamp<br/>_uint256 _offerToken_ - ERC20 token address user wants to pay, 0 for native<br/>**Outputs**none<br/>emits **MakeBuyInOffer** event | Provides interface to make an offer to buy-in collective tokens by using native token / ERC20 / SEDC token. Holds the offer token.<br/>The buy-in offer is automatically accepted by the collective owner and transfers collective tokens to the buyer if offer token is SEDC. |
| 3 | acceptBuyInOffer | **Inputs**<br/>_string memory _offerId_ - Buy-in offer id to accept<br/>**Outputs**<br/>none<br/>emits **AcceptBuyInOffer** event | Provides interface to accept a buy-in offer. Transfers the offer token to the seller(who accepted the buyin offer), transfers collective tokens from the seller to the buyer. |
| 4 | refundBuyInOffer | **Inputs**<br/>_string memory _offerId_ - Buy-in offer id to withdraw<br/>**Outputs**<br/>none<br/>emits **RefundBuyInOffer** event | Provides interface to withdraw an expired buy-in offer. Transfers the offer token back to the buyer. |

## HashtagNFTCollectiveManager

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | mint | **Inputs**<br/>_uint256 _supply_ - Number of collective tokens to mint<br/>**Outputs**none | Mints collective tokens for the curator of the collective.<br/>Only backend server wallet can call. |
| 2 | mintGovernor | **Inputs**<br/>none<br/>**Outputs**<br/>address - Governor contract address deployed | Deploys the timelock controller and governor contracts for the collective.<br/>Only factory proxy contract can call. |
| 3 | transferCollectiveTokens | **Inputs**<br/>_address _seller_ - Seller address of the buy-in offer (who accepted it)<br/>_address _buyer_ - Buyer address of the buy-in offer(who made it)<br/>_uint256 exchangeAmount_ - Number of the collective tokens to transfer<br/>**Outputs**<br/>none | Transfers the exchange amount of collective tokens from buyer to seller.<br/>Only collective's buy-in manager contract can call. |
| 4 | setBuyOutAmount | **Inputs**<br/>_uint256 amount_ - new buy-out fee<br/>**Outputs**<br/>none<br/>emits **SetBuyOutAmount** event | Sets the buy-out fee of the collective.<br/>Only collective's governor contract can call. |
| 5 | buyOut<br/>_(payapble)_ | **Inputs**<br/>_address _buyer - address of the buyer<br/>**Outputs**<br/>none<br/>emits **BuyOut** event | Buys out the collective - get the ownership of the collective, get the rights ownership of the NFTs. Instead deposts buy-out fee to the treasury.<br/>Only collective's governor contract can call. |
| 6 | transferOwnershipTo | **Inputs**<br/>_address _newOwner_ - New owner’s address.<br/>**Outputs**<br/>none<br/>emits **TransferOwnershipTo** event | Transfers all the collective tokens and the ownership of the collective and NFTs. Can be called only by backend server wallet or factory proxy contract. |
| 7 | treasuryBurnAmount | **Inputs**<br/>_address burnAddress_ - Wallet address to burn collective tokens from<br/>_uint256 amount_ - Collective token amount to burn<br/>**Outputs**<br/>none | Burns the user's collective tokens after treasury cash-out.<br/>Only treasury contract can call. |
| 8 | setBuyInManager | **Inputs**<br/>_address _buyinManager_ - Buy-in manager contract address | Sets the buy-in manager contract address of the collective after mint.<br/>Only factory proxy can call. |

## HashtagNFTCollectiveNFTGovernor

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | requestClaimRoyalty | **Inputs**<br/>_address receiver_ - User address to transfer royalty to<br/>_uint256 amount_ - Royalty amount to transfer<br/>_string calldata description_ - Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to withdraw royalty amount to the receiver |
| 2 | requestSetBuyOutPrice | **Inputs**<br/>_uint256 amount_ - New buy-out price to propose<br/>_string calldata description_ - Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to set the buy-out price of the collective |
| 3 | requestSetLicense | **Inputs**<br/>_string calldata licenseURI_ - new license file URL<br/>_string calldata description_ - Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to set the copyright license of the NFTs in the collective. |
| 4 | requestBuyOut<br/>_(payable)_ | **Inputs**<br/>_int256 buyoutFee_ - buyout price buyer willing to pay<br/>_string calldata description_ - Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to buy-out the collective. |
| 5 | requestSetProposalThreshold | **Inputs**<br/>_uint256 newProposalThreshold_ - new proposal threshold to propose<br/>_string calldata description_ - Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to set the proposal of the collective governor. |
| 6 | requestUpdateQuorumNumerator | **Inputs**<br/>_uint256 newQuorumNumerator_ - new voting quorum numerator proposed<br/>_string calldata description_: Proposal description<br/>**Outputs**<br/>uint256 - proposal Id created | Creates a proposal to set the voting quorum numerator of the collective governor. |
| 7 | requestNFTSale | **Inputs**<br/>_address nftAddress_ - NFT contract address to set for sale<br/>_uint256 itemId_ - NFT item id to set for sale<br/>_string calldata description_ - Proposal description<br/>**Outputs**uint256 proposal Id created | Creates a proposal to set the NFT for sale |
| 8 | refundBuyoutFee | **Inputs**<br/>_uint256 proposalId_ - Id of the buy-out proposal<br/>**Outputs**<br/>none | Refund the buy-out fee used to make a buy-out proposal. |

## HashtagNFTCollectiveERC721

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | createCollectible | **Inputs**<br/>_string memory _mediaURL_ - media URL<br/>_uint256 itemId_ - NFT item Id<br/>_string memory metadataJsonUrl_<br/>_string memory viewStatJsonUrl_<br/>_string memory picUrl_<br/>_string memory appLinkUrl_<br/>_string memory defaultLicenseURL_<br/>**Outputs**<br/>uint256 - minted NFT Id | Mints an NFT with given arguments. |
| 2 | wrapToken | **Inputs**<br/>_address from_ - owner address<br/>_uint256 tokenId_ - NFT Id<br/>**Outputs**<br/>uint256 - minted NFT Id | Wrap an existing NFT - mint a new NFT from the existing one and transfer the existing NFT to the NFT contract. |
| 3 | unwrapToken | **Inputs**<br/>_uint256 tokenId_ - NFT Id to unwrap<br/>**Outputs**<br/>Unwrap an imported NFT - burn the NFT and transfer the imported NFT to the NFT vault.<br/>Only NFT vault contract can call. |
| 4 | setWrappedTokenURI | **Inputs**<br/>_address from - deprecated_<br/>_uint256tokenId: NFT item Id | Set the tokenURI of the NFT. |
| 5 | setRoyalties | **Inputs**<br/>_uint256[] memory tokenIds_ - Array of NFT item Id<br/>_uint256 royalties_ - Array of the royalties for each NFT item<br/>**Outputs**<br/>none | Set the royalties for NFT items |
| 6 | royaltyInfo<br/>_(view)_ | **Inputs**<br/>_uint256 _tokenId_ - NFT item Id<br/>_uint256 _salePrice_ - NFT sale price<br/>Get the royalty payment information of the NFT item. |
| 7 | setRightsOwner | **Inputs**<br/>_address _rightsOwner_ - rights owner address to be set<br/>**Outputs**<br/>none | Set the rights ower of the NFT contract, rights owner is the receiver of the royalties. |
| 8 | getRightsOwner<br/>_(view)_ | **Inputs**<br/>**Outputs**<br/>address - rights owner address | Retrieves the rights owner of the NFT contract. |
| 9 | setLicense | **Inputs**<br/>_string memory url_ - new license file URL<br/>**Outputs**<br/>none | Sets the copyright license of the NFT contract. |
| 10 | getLicenseInfo<br/>_(view)_ | **Inputs**<br/>none<br/>**Outputs**<br/>string[] - current license info(URL and timestamp)<br/>string[]][] license history | Retrieves the current copyright license and the history. |
| 11 | setManager | **Inputs**<br/>_address _manager_ - collective token contract address<br/>**Outputs**<br/>none | Sets the collective token contract address. |
| 12 | setNFTVault | **Inputs**<br/>_address _nftVault_ - collective NFT vault contract address<br/>**Outputs**<br/>none | Sets the collective's NFT vault contract address. |
| 13 | setGovernor | **Inputs**<br/>_address _governor_ - collective governorcontract address<br/>**Outputs**<br/>none | Sets the collective's governor address. |

## HashtagNFTCollectiveMarketplace

| # | Function | Input / Output | Description |
|---|----------|----------------|-------------|
| 1 | startNFTAuction | **Inputs**<br/>_address _nftAddress_ - NFT contract address for auction<br/>_uint256 _itemId_ - NFT item id for auction<br/>_uint256 _proposalId_ - proposal Id - 0 if not through the collective's governor<br/>**Outputs**<br/>uint256 - auction id created<br/>emits **StartNFTAuction** event |  Initiate an auction for the NFT. |
| 2 | endNFTAuction | **Inputs**<br/>_uint256 _auctionId_ - auction id to end<br/>_AuctionState _closingState_ - either ClosedNoWinner or ClosedWithWinner<br/>_uint256 _winner bid id<br/>**Outputs**<br/>none<br/>emits **EndNFTAuction** event | Ends the NFT auction. |
| 3 | auctionState<br/>_(view)_ | **Inputs**<br/>_uint256 _auctionId_ - auction id to end<br/>**Outputs**<br/>AuctionState - state of the auction | Returns the state of the auction. |
| 4 | placeBid<br/>_(payable)_ | **Inputs**<br/>_uint256 _auctionId_ - Id of the auction to place bid on<br/>_address _bidToken_ - bid token address<br/>_uint256 _bidAmount_ - amount of the bid token<br/>**Outputs**<br/>none<br/>emits **PlaceBid** event | Provides an interface to place a bid to the auction. |
| 5 | auctionBidCount<br/>_(view)_ | **Inputs**<br/>_uint256 _auctionId_ - auction Id<br/>**Outputs**<br/>uint256 - number of bids on the auction | Retrieves the number of bids on the NFT auction. |
| 6 | auctionBidList<br/>_(view)_ | **Inputs**<br/>_uint256 _auctionId_ - auction Id<br/>**Outputs**<br/>AuctionBid[] - list of the bids on the auction | Retrieves the list of bids on the NFT auction |
| 7 | refundBid | **Inputs**<br/>_uint256 _auctionId_ - auction Id<br/>_uint256 _bidId_ - Id of the bid to refund<br/>**Outputs**<br/>none<br/>emits **RefundBid** event | Provides an interface to refund the bid. |
| 8 | transferNFTToWinner | **Inputs**<br/>_uint256 _auctionId_: auction Id<br/>_uint256 _bidId_ - win bid Id<br/>_address _winner_ - auction winner address to transfer the NFT<br/>**Outputs**<br/>none<br/>emits **TransferNFTToWinner** event | Provides an interface to transfer the NFT to the auction winner. |
