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
        address assetAddress;
        /* asset ID if any */
        uint256 assetId;
        /* asset type */
        AssetType assetType;
    }

    struct MetaAsset {
        /* the asset (token) */
        Asset asset;
        /* metaverse id */
        bytes32 metaverse;
        /* owner of the asset */
        address owner;
        /* beneficiary of the asset */
        address beneficiary;
        /* amount of asset */
        uint256 amount;
        /* random number */
        bytes32 salt;
    }
}
