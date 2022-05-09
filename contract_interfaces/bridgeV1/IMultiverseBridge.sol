//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

import "./DomainV1.sol";

interface MultiverseBridge {
    event AssetInbound(
        bool raptured,
        bytes32 entryHash,
        address target,
        address oracle,
        address assetAddress,
        uint256 assetId,
        uint256 assetType,
        bytes32 metaverse,
        address owner,
        address beneficiary,
        uint256 amount,
        bytes32 salt
    );

    event AssetOutbound(
        bytes32 entryHash,
        address oracle,
        address assetAddress,
        uint256 assetId,
        uint256 assetType,
        bytes32 metaverse,
        address to,
        uint256 amount
    );

    event AssetSummon(
        address oracle,
        address assetAddress,
        bytes32 metaverse,
        address to,
        uint256[] assetIds,
        uint256[] amounts
    );

    event AssetBeneficiaryChange(
        address oracle,
        bytes32 oldEntryHash,
        bytes32 newEntryHash,
        address oldBeneficiary,
        address newBeneficiary,
        bytes32 newSalt
    );

    event AssetOwnerChange(
        address oracle,
        bytes32 oldEntryHash,
        bytes32 newEntryHash,
        address oldOwner,
        address newOwner,
        bytes32 newSalt
    );

    event OthersideSet(address otherside);

    function otherside() external view returns (address);

    function calculateMetaAssetHash(DomainV1.MetaAsset memory mAsset)
        external
        pure
        returns (bytes32);

    function existsImported(bytes32 _hash) external view returns (bool);

    function existsEnraptured(bytes32 _hash) external view returns (bool);

    function isHashAlreadyUsed(bytes32 _hash) external view returns (bool);

    function getImportedMetaAsset(bytes32 _hash)
        external
        view
        returns (DomainV1.MetaAsset memory);

    function getEnrapturedMetaAsset(bytes32 _hash)
        external
        view
        returns (DomainV1.MetaAsset memory);
}
