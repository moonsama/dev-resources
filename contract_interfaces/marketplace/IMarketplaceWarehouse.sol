//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

import "./DomainV1.sol";

interface IMarketplaceWarehouse {
    function completedOrder(bytes32 _orderHash) external view returns (bool);

    function order(bytes32 _orderHash)
        external
        view
        returns (DomainV1.Order memory);

    function getOrder(bytes32 _orderHash)
        external
        view
        returns (DomainV1.Order memory);
}
