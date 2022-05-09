//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

contract DomainV1 {
    enum AssetType {
        UNKNOWN,
        NATIVE,
        ERC20,
        ERC721,
        ERC1155
    }

    struct Asset {
        /* asset contract address */
        address addr;
        /* asset ID if any */
        uint256 id;
        /* asset type */
        AssetType assetType;
    }

    struct Order {
        /* strategy selector */
        bytes32 strategy;
        /* random number */
        uint256 salt;
        /* signer of the order, maker */
        address seller;
        /* what the seller has */
        Asset sellAsset;
        /* what the seller wants */
        Asset buyAsset;
    }
}
