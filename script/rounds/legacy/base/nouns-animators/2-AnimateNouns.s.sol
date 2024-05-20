// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Script} from 'forge-std/Script.sol';
import {AssetController} from 'src/AssetController.sol';
import {FarcasterClaimV1} from 'src/legacy/FarcasterClaimV1.sol';
import {IFarcasterClaimV1} from 'src/legacy/interfaces/IFarcasterClaimV1.sol';

contract AnimateNouns2 is Script {
    function run() public {
        uint256 ownerKey = vm.envUint('OWNER_PRIVATE_KEY');
        vm.startBroadcast(ownerKey);

        uint40 ROUND_ID = 22;

        FarcasterClaimV1 fc = FarcasterClaimV1(payable(vm.envAddress('FARCASTER_CLAIM_ADDRESS')));

        // ETH is offered in the round.
        fc.setAssetForRound(ROUND_ID, AssetController.Asset(AssetController.AssetType.ETH, address(0), 0));

        IFarcasterClaimV1.Winner[] memory winners = new IFarcasterClaimV1.Winner[](38);
        winners[0] = IFarcasterClaimV1.Winner({fid: 3781, amount: 0.031088082901554404 ether});
        winners[1] = IFarcasterClaimV1.Winner({fid: 4577, amount: 0.04145077720207254 ether});
        winners[2] = IFarcasterClaimV1.Winner({fid: 9801, amount: 0.06217616580310881 ether});
        winners[3] = IFarcasterClaimV1.Winner({fid: 16670, amount: 0.02072538860103627 ether});
        winners[4] = IFarcasterClaimV1.Winner({fid: 20198, amount: 0.1761658031088083 ether});
        winners[5] = IFarcasterClaimV1.Winner({fid: 195631, amount: 0.07253886010362695 ether});
        winners[6] = IFarcasterClaimV1.Winner({fid: 205130, amount: 0.02072538860103627 ether});
        winners[7] = IFarcasterClaimV1.Winner({fid: 235835, amount: 0.010362694300518135 ether});
        winners[8] = IFarcasterClaimV1.Winner({fid: 253402, amount: 0.031088082901554404 ether});
        winners[9] = IFarcasterClaimV1.Winner({fid: 290654, amount: 0.07253886010362695 ether});
        winners[10] = IFarcasterClaimV1.Winner({fid: 299247, amount: 0.1450777202072539 ether});
        winners[11] = IFarcasterClaimV1.Winner({fid: 306715, amount: 0.06217616580310881 ether});
        winners[12] = IFarcasterClaimV1.Winner({fid: 309849, amount: 0.06217616580310881 ether});
        winners[13] = IFarcasterClaimV1.Winner({fid: 310382, amount: 0.04145077720207254 ether});
        winners[14] = IFarcasterClaimV1.Winner({fid: 318278, amount: 0.02072538860103627 ether});
        winners[15] = IFarcasterClaimV1.Winner({fid: 323251, amount: 0.08290155440414508 ether});
        winners[16] = IFarcasterClaimV1.Winner({fid: 332881, amount: 0.06217616580310881 ether});
        winners[17] = IFarcasterClaimV1.Winner({fid: 342717, amount: 0.010362694300518135 ether});
        winners[18] = IFarcasterClaimV1.Winner({fid: 395720, amount: 0.10362694300518135 ether});
        winners[19] = IFarcasterClaimV1.Winner({fid: 396837, amount: 0.02072538860103627 ether});
        winners[20] = IFarcasterClaimV1.Winner({fid: 396844, amount: 0.031088082901554404 ether});
        winners[21] = IFarcasterClaimV1.Winner({fid: 396867, amount: 0.04145077720207254 ether});
        winners[22] = IFarcasterClaimV1.Winner({fid: 396886, amount: 0.010362694300518135 ether});
        winners[23] = IFarcasterClaimV1.Winner({fid: 396891, amount: 0.04145077720207254 ether});
        winners[24] = IFarcasterClaimV1.Winner({fid: 396902, amount: 0.2072538860103627 ether});
        winners[25] = IFarcasterClaimV1.Winner({fid: 397077, amount: 0.010362694300518135 ether});
        winners[26] = IFarcasterClaimV1.Winner({fid: 398799, amount: 0.08290155440414508 ether});
        winners[27] = IFarcasterClaimV1.Winner({fid: 399241, amount: 0.031088082901554404 ether});
        winners[28] = IFarcasterClaimV1.Winner({fid: 400932, amount: 0.08290155440414508 ether});
        winners[29] = IFarcasterClaimV1.Winner({fid: 401023, amount: 0.02072538860103627 ether});
        winners[30] = IFarcasterClaimV1.Winner({fid: 402644, amount: 0.031088082901554404 ether});
        winners[31] = IFarcasterClaimV1.Winner({fid: 407937, amount: 0.031088082901554404 ether});
        winners[32] = IFarcasterClaimV1.Winner({fid: 413213, amount: 0.04145077720207254 ether});
        winners[33] = IFarcasterClaimV1.Winner({fid: 417318, amount: 0.02072538860103627 ether});
        winners[34] = IFarcasterClaimV1.Winner({fid: 418671, amount: 0.05181347150259068 ether});
        winners[35] = IFarcasterClaimV1.Winner({fid: 433072, amount: 0.04145077720207254 ether});
        winners[36] = IFarcasterClaimV1.Winner({fid: 441949, amount: 0.031088082901554404 ether});
        winners[37] = IFarcasterClaimV1.Winner({fid: 448870, amount: 0.0414507772 ether});

        fc.setWinnersForRound(ROUND_ID, winners);

        vm.stopBroadcast();
    }
}
