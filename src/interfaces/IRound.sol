// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {AssetController} from 'src/AssetController.sol';

interface IRound {
    /// @notice Thrown when the caller is not the round admin.
    error ONLY_ADMIN();

    /// @notice Thrown when an award has already been claimed.
    error ALREADY_CLAIMED();

    /// @notice Thrown when there is nothing to claim for a given round.
    error NOTHING_TO_CLAIM();

    /// @notice Thrown when attempting to claim an invalid asset.
    error INVALID_ASSET();

    /// @notice Thrown when an invalid recipient is provided.
    error INVALID_RECIPIENT();

    /// @notice Thrown when an invalid `Claim` signature is provided.
    error INVALID_SIGNATURE();

    /// @notice Thrown when a merkle leaf is invalid.
    error INVALID_LEAF();

    /// @notice Emitted when the round admin changes the merkle root.
    event MerkleRootSet(bytes32 newMerkleRoot);

    /// @notice Emitted when a Farcaster ID claims their award for a given round.
    /// @param fid The Farcaster ID.
    /// @param to The address that the award was sent to.
    /// @param amount The award amount.
    event Claimed(uint256 fid, address to, uint256 amount);

    /// @param factory The factory contract that deployed the round instance.
    /// @param admin The round admin.
    /// @param award The award asset.
    function initialize(address factory, address admin, AssetController.Asset calldata award) external;
}
