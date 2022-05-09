//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

import "./DomainV1.sol";

interface IMarketplace {
    event Order(
        bytes32 indexed orderHash,
        address indexed seller,
        address indexed sellAssetAddress,
        uint256 sellAssetId,
        uint256 sellAssetType,
        address buyAssetAddress,
        uint256 buyAssetId,
        uint256 buyAssetType,
        bytes32 strategy,
        uint256 salt,
        uint256 sellerEscrowsAmount
    );

    event Fill(
        bytes32 indexed orderHash,
        address indexed buyer,
        uint256 buyerSendsAmountFull,
        uint256 buyerSentAmount,
        uint256 sellerSendsAmountFull,
        uint256 sellerSentAmount,
        bool complete
    );

    event Cancel(bytes32 indexed orderHash, uint256 sellerGetsBackAmount);

    event PaymentTokenSet(
        address token,
        DomainV1.AssetType assetType,
        bool enabled
    );

    event WarehouseSet(address warehouse);

    function warehouse() external view returns (address);

    function calculateOrderHash(DomainV1.Order memory _order)
        external
        pure
        returns (bytes32);
}
