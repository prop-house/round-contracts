// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Script} from 'forge-std/Script.sol';
import {AssetController} from 'src/AssetController.sol';
import {FarcasterClaimV1} from 'src/legacy/FarcasterClaimV1.sol';
import {IFarcasterClaimV1} from 'src/legacy/interfaces/IFarcasterClaimV1.sol';

contract RetroRound7 is Script {
    function run() public {
        uint256 ownerKey = vm.envUint('OWNER_PRIVATE_KEY');
        vm.startBroadcast(ownerKey);

        uint40 ROUND_ID = 21;

        FarcasterClaimV1 fc = FarcasterClaimV1(payable(vm.envAddress('FARCASTER_CLAIM_ADDRESS')));

        // ETH is offered in the round.
        fc.setAssetForRound(ROUND_ID, AssetController.Asset(AssetController.AssetType.ETH, address(0), 0));

        IFarcasterClaimV1.Winner[] memory winners = new IFarcasterClaimV1.Winner[](159);
        winners[0] = IFarcasterClaimV1.Winner({fid: 114, amount: 0.005707297187117815 ether});
        winners[1] = IFarcasterClaimV1.Winner({fid: 358, amount: 0.000815328169588259 ether});
        winners[2] = IFarcasterClaimV1.Winner({fid: 472, amount: 0.003261312678353037 ether});
        winners[3] = IFarcasterClaimV1.Winner({fid: 518, amount: 0.002445984508764778 ether});
        winners[4] = IFarcasterClaimV1.Winner({fid: 534, amount: 0.014675907052588666 ether});
        winners[5] = IFarcasterClaimV1.Winner({fid: 617, amount: 0.013860578883000409 ether});
        winners[6] = IFarcasterClaimV1.Winner({fid: 742, amount: 0.01059926620464737 ether});
        winners[7] = IFarcasterClaimV1.Winner({fid: 762, amount: 0.008153281695882593 ether});
        winners[8] = IFarcasterClaimV1.Winner({fid: 803, amount: 0.010599266204647372 ether});
        winners[9] = IFarcasterClaimV1.Winner({fid: 834, amount: 0.0399510803098247 ether});
        winners[10] = IFarcasterClaimV1.Winner({fid: 1079, amount: 0.00978393803505911 ether});
        winners[11] = IFarcasterClaimV1.Winner({fid: 1097, amount: 0.09376273950264981 ether});
        winners[12] = IFarcasterClaimV1.Winner({fid: 1301, amount: 0.13045250713412151 ether});
        winners[13] = IFarcasterClaimV1.Winner({fid: 1534, amount: 0.00244598450876477 ether});
        winners[14] = IFarcasterClaimV1.Winner({fid: 1556, amount: 0.01141459437423563 ether});
        winners[15] = IFarcasterClaimV1.Winner({fid: 1841, amount: 0.002445984508764778 ether});
        winners[16] = IFarcasterClaimV1.Winner({fid: 1894, amount: 0.04891969017529555 ether});
        winners[17] = IFarcasterClaimV1.Winner({fid: 2112, amount: 0.015491235222176925 ether});
        winners[18] = IFarcasterClaimV1.Winner({fid: 2235, amount: 0.030167142274765593 ether});
        winners[19] = IFarcasterClaimV1.Winner({fid: 2266, amount: 0.0179372197309417 ether});
        winners[20] = IFarcasterClaimV1.Winner({fid: 2433, amount: 0.18344883815735835 ether});
        winners[21] = IFarcasterClaimV1.Winner({fid: 2458, amount: 0.013045250713412147 ether});
        winners[22] = IFarcasterClaimV1.Winner({fid: 2514, amount: 0.01059926620464737 ether});
        winners[23] = IFarcasterClaimV1.Winner({fid: 2558, amount: 0.003261312678353037 ether});
        winners[24] = IFarcasterClaimV1.Winner({fid: 2618, amount: 0.001630656339176519 ether});
        winners[25] = IFarcasterClaimV1.Winner({fid: 2649, amount: 0.001630656339176519 ether});
        winners[26] = IFarcasterClaimV1.Winner({fid: 2757, amount: 0.01141459437423563 ether});
        winners[27] = IFarcasterClaimV1.Winner({fid: 3414, amount: 0.00244598450876477 ether});
        winners[28] = IFarcasterClaimV1.Winner({fid: 3602, amount: 0.006522625356706074 ether});
        winners[29] = IFarcasterClaimV1.Winner({fid: 3642, amount: 0.11414594374235632 ether});
        winners[30] = IFarcasterClaimV1.Winner({fid: 3700, amount: 0.006522625356706074 ether});
        winners[31] = IFarcasterClaimV1.Winner({fid: 3702, amount: 0.007337953526294334 ether});
        winners[32] = IFarcasterClaimV1.Winner({fid: 3711, amount: 0.05870362821035467 ether});
        winners[33] = IFarcasterClaimV1.Winner({fid: 3734, amount: 0.029351814105177336 ether});
        winners[34] = IFarcasterClaimV1.Winner({fid: 3750, amount: 0.01141459437423563 ether});
        winners[35] = IFarcasterClaimV1.Winner({fid: 3781, amount: 0.005707297187117814 ether});
        winners[36] = IFarcasterClaimV1.Winner({fid: 3827, amount: 0.035059111292295136 ether});
        winners[37] = IFarcasterClaimV1.Winner({fid: 3895, amount: 0.027721157766000815 ether});
        winners[38] = IFarcasterClaimV1.Winner({fid: 3974, amount: 0.010599266204647372 ether});
        winners[39] = IFarcasterClaimV1.Winner({fid: 4132, amount: 0.004891969017529555 ether});
        winners[40] = IFarcasterClaimV1.Winner({fid: 4134, amount: 0.002445984508764777 ether});
        winners[41] = IFarcasterClaimV1.Winner({fid: 4167, amount: 0.017121891561353447 ether});
        winners[42] = IFarcasterClaimV1.Winner({fid: 4199, amount: 0.006522625356706074 ether});
        winners[43] = IFarcasterClaimV1.Winner({fid: 4567, amount: 0.01304525071341215 ether});
        winners[44] = IFarcasterClaimV1.Winner({fid: 4904, amount: 0.001630656339176519 ether});
        winners[45] = IFarcasterClaimV1.Winner({fid: 5376, amount: 0.002445984508764778 ether});
        winners[46] = IFarcasterClaimV1.Winner({fid: 5450, amount: 0.02038320423970648 ether});
        winners[47] = IFarcasterClaimV1.Winner({fid: 5460, amount: 0.001630656339176519 ether});
        winners[48] = IFarcasterClaimV1.Winner({fid: 5515, amount: 0.01059926620464737 ether});
        winners[49] = IFarcasterClaimV1.Winner({fid: 5516, amount: 0.008968609865470852 ether});
        winners[50] = IFarcasterClaimV1.Winner({fid: 6164, amount: 0.005707297187117815 ether});
        winners[51] = IFarcasterClaimV1.Winner({fid: 6227, amount: 0.002445984508764778 ether});
        winners[52] = IFarcasterClaimV1.Winner({fid: 6852, amount: 0.001630656339176519 ether});
        winners[53] = IFarcasterClaimV1.Winner({fid: 7061, amount: 0.000815328169588259 ether});
        winners[54] = IFarcasterClaimV1.Winner({fid: 7143, amount: 0.016306563391765186 ether});
        winners[55] = IFarcasterClaimV1.Winner({fid: 7181, amount: 0.001630656339176519 ether});
        winners[56] = IFarcasterClaimV1.Winner({fid: 7759, amount: 0.010599266204647372 ether});
        winners[57] = IFarcasterClaimV1.Winner({fid: 9280, amount: 0.04891969017529556 ether});
        winners[58] = IFarcasterClaimV1.Winner({fid: 9290, amount: 0.006522625356706073 ether});
        winners[59] = IFarcasterClaimV1.Winner({fid: 10051, amount: 0.002445984508764778 ether});
        winners[60] = IFarcasterClaimV1.Winner({fid: 10605, amount: 0.013045250713412147 ether});
        winners[61] = IFarcasterClaimV1.Winner({fid: 10810, amount: 0.00978393803505911 ether});
        winners[62] = IFarcasterClaimV1.Winner({fid: 11500, amount: 0.06685690990623726 ether});
        winners[63] = IFarcasterClaimV1.Winner({fid: 11508, amount: 0.01222992254382389 ether});
        winners[64] = IFarcasterClaimV1.Winner({fid: 11512, amount: 0.002445984508764778 ether});
        winners[65] = IFarcasterClaimV1.Winner({fid: 11990, amount: 0.03913575214023645 ether});
        winners[66] = IFarcasterClaimV1.Winner({fid: 11998, amount: 0.008153281695882593 ether});
        winners[67] = IFarcasterClaimV1.Winner({fid: 12021, amount: 0.00244598450876477 ether});
        winners[68] = IFarcasterClaimV1.Winner({fid: 12224, amount: 0.001630656339176519 ether});
        winners[69] = IFarcasterClaimV1.Winner({fid: 12342, amount: 0.03995108030982468 ether});
        winners[70] = IFarcasterClaimV1.Winner({fid: 12590, amount: 0.00407664084794129 ether});
        winners[71] = IFarcasterClaimV1.Winner({fid: 12977, amount: 0.002445984508764778 ether});
        winners[72] = IFarcasterClaimV1.Winner({fid: 13006, amount: 0.017121891561353447 ether});
        winners[73] = IFarcasterClaimV1.Winner({fid: 13121, amount: 0.001630656339176519 ether});
        winners[74] = IFarcasterClaimV1.Winner({fid: 13432, amount: 0.01141459437423563 ether});
        winners[75] = IFarcasterClaimV1.Winner({fid: 13986, amount: 0.003261312678353037 ether});
        winners[76] = IFarcasterClaimV1.Winner({fid: 14466, amount: 0.000815328169588259 ether});
        winners[77] = IFarcasterClaimV1.Winner({fid: 14782, amount: 0.001630656339176519 ether});
        winners[78] = IFarcasterClaimV1.Winner({fid: 15153, amount: 0.000815328169588259 ether});
        winners[79] = IFarcasterClaimV1.Winner({fid: 15294, amount: 0.004891969017529556 ether});
        winners[80] = IFarcasterClaimV1.Winner({fid: 15434, amount: 0.04484304932735426 ether});
        winners[81] = IFarcasterClaimV1.Winner({fid: 15516, amount: 0.004076640847941296 ether});
        winners[82] = IFarcasterClaimV1.Winner({fid: 15766, amount: 0.000815328169588259 ether});
        winners[83] = IFarcasterClaimV1.Winner({fid: 15899, amount: 0.007337953526294332 ether});
        winners[84] = IFarcasterClaimV1.Winner({fid: 17114, amount: 0.008153281695882593 ether});
        winners[85] = IFarcasterClaimV1.Winner({fid: 17195, amount: 0.001630656339176518 ether});
        winners[86] = IFarcasterClaimV1.Winner({fid: 18560, amount: 0.023644516918059518 ether});
        winners[87] = IFarcasterClaimV1.Winner({fid: 18586, amount: 0.003261312678353037 ether});
        winners[88] = IFarcasterClaimV1.Winner({fid: 18655, amount: 0.00978393803505911 ether});
        winners[89] = IFarcasterClaimV1.Winner({fid: 19530, amount: 0.025275173257236036 ether});
        winners[90] = IFarcasterClaimV1.Winner({fid: 19776, amount: 0.002445984508764778 ether});
        winners[91] = IFarcasterClaimV1.Winner({fid: 20082, amount: 0.05299633102323685 ether});
        winners[92] = IFarcasterClaimV1.Winner({fid: 20105, amount: 0.000815328169588259 ether});
        winners[93] = IFarcasterClaimV1.Winner({fid: 20133, amount: 0.015491235222176929 ether});
        winners[94] = IFarcasterClaimV1.Winner({fid: 20147, amount: 0.015491235222176929 ether});
        winners[95] = IFarcasterClaimV1.Winner({fid: 20198, amount: 0.03587443946188341 ether});
        winners[96] = IFarcasterClaimV1.Winner({fid: 20228, amount: 0.014675907052588666 ether});
        winners[97] = IFarcasterClaimV1.Winner({fid: 20265, amount: 0.004076640847941296 ether});
        winners[98] = IFarcasterClaimV1.Winner({fid: 20287, amount: 0.000815328169588259 ether});
        winners[99] = IFarcasterClaimV1.Winner({fid: 20413, amount: 0.008968609865470852 ether});
        winners[100] = IFarcasterClaimV1.Winner({fid: 20539, amount: 0.02445984508764778 ether});
        winners[101] = IFarcasterClaimV1.Winner({fid: 20558, amount: 0.004891969017529555 ether});
        winners[102] = IFarcasterClaimV1.Winner({fid: 21173, amount: 0.000815328169588259 ether});
        winners[103] = IFarcasterClaimV1.Winner({fid: 21191, amount: 0.004891969017529556 ether});
        winners[104] = IFarcasterClaimV1.Winner({fid: 22420, amount: 0.002445984508764777 ether});
        winners[105] = IFarcasterClaimV1.Winner({fid: 23036, amount: 0.002445984508764778 ether});
        winners[106] = IFarcasterClaimV1.Winner({fid: 23192, amount: 0.002445984508764778 ether});
        winners[107] = IFarcasterClaimV1.Winner({fid: 191593, amount: 0.022013860578883 ether});
        winners[108] = IFarcasterClaimV1.Winner({fid: 193159, amount: 0.001630656339176519 ether});
        winners[109] = IFarcasterClaimV1.Winner({fid: 195631, amount: 0.000815328169588259 ether});
        winners[110] = IFarcasterClaimV1.Winner({fid: 205130, amount: 0.000815328169588259 ether});
        winners[111] = IFarcasterClaimV1.Winner({fid: 207810, amount: 0.000815328169588259 ether});
        winners[112] = IFarcasterClaimV1.Winner({fid: 212992, amount: 0.001630656339176519 ether});
        winners[113] = IFarcasterClaimV1.Winner({fid: 213310, amount: 0.001630656339176519 ether});
        winners[114] = IFarcasterClaimV1.Winner({fid: 216260, amount: 0.003261312678353037 ether});
        winners[115] = IFarcasterClaimV1.Winner({fid: 216523, amount: 0.000815328169588259 ether});
        winners[116] = IFarcasterClaimV1.Winner({fid: 223862, amount: 0.006522625356706074 ether});
        winners[117] = IFarcasterClaimV1.Winner({fid: 225736, amount: 0.005707297187117815 ether});
        winners[118] = IFarcasterClaimV1.Winner({fid: 228795, amount: 0.001630656339176519 ether});
        winners[119] = IFarcasterClaimV1.Winner({fid: 230941, amount: 0.015491235222176929 ether});
        winners[120] = IFarcasterClaimV1.Winner({fid: 238425, amount: 0.004891969017529555 ether});
        winners[121] = IFarcasterClaimV1.Winner({fid: 240370, amount: 0.001630656339176519 ether});
        winners[122] = IFarcasterClaimV1.Winner({fid: 240602, amount: 0.001630656339176519 ether});
        winners[123] = IFarcasterClaimV1.Winner({fid: 246523, amount: 0.003261312678353036 ether});
        winners[124] = IFarcasterClaimV1.Winner({fid: 249586, amount: 0.014675907052588668 ether});
        winners[125] = IFarcasterClaimV1.Winner({fid: 254426, amount: 0.000815328169588259 ether});
        winners[126] = IFarcasterClaimV1.Winner({fid: 263648, amount: 0.001630656339176519 ether});
        winners[127] = IFarcasterClaimV1.Winner({fid: 266767, amount: 0.000815328169588259 ether});
        winners[128] = IFarcasterClaimV1.Winner({fid: 269091, amount: 0.000815328169588259 ether});
        winners[129] = IFarcasterClaimV1.Winner({fid: 273430, amount: 0.002445984508764778 ether});
        winners[130] = IFarcasterClaimV1.Winner({fid: 276826, amount: 0.000815328169588259 ether});
        winners[131] = IFarcasterClaimV1.Winner({fid: 293719, amount: 0.002445984508764778 ether});
        winners[132] = IFarcasterClaimV1.Winner({fid: 294434, amount: 0.000815328169588259 ether});
        winners[133] = IFarcasterClaimV1.Winner({fid: 310213, amount: 0.001630656339176519 ether});
        winners[134] = IFarcasterClaimV1.Winner({fid: 312747, amount: 0.00978393803505911 ether});
        winners[135] = IFarcasterClaimV1.Winner({fid: 318473, amount: 0.01141459437423563 ether});
        winners[136] = IFarcasterClaimV1.Winner({fid: 319497, amount: 0.002445984508764778 ether});
        winners[137] = IFarcasterClaimV1.Winner({fid: 323251, amount: 0.008968609865470852 ether});
        winners[138] = IFarcasterClaimV1.Winner({fid: 342737, amount: 0.009783938035059113 ether});
        winners[139] = IFarcasterClaimV1.Winner({fid: 346757, amount: 0.004076640847941296 ether});
        winners[140] = IFarcasterClaimV1.Winner({fid: 366587, amount: 0.001630656339176519 ether});
        winners[141] = IFarcasterClaimV1.Winner({fid: 371241, amount: 0.029351814105177336 ether});
        winners[142] = IFarcasterClaimV1.Winner({fid: 374408, amount: 0.000815328169588259 ether});
        winners[143] = IFarcasterClaimV1.Winner({fid: 374867, amount: 0.001630656339176519 ether});
        winners[144] = IFarcasterClaimV1.Winner({fid: 384860, amount: 0.004891969017529556 ether});
        winners[145] = IFarcasterClaimV1.Winner({fid: 388453, amount: 0.001630656339176518 ether});
        winners[146] = IFarcasterClaimV1.Winner({fid: 393871, amount: 0.000815328169588259 ether});
        winners[147] = IFarcasterClaimV1.Winner({fid: 396902, amount: 0.004891969017529555 ether});
        winners[148] = IFarcasterClaimV1.Winner({fid: 397084, amount: 0.030167142274765593 ether});
        winners[149] = IFarcasterClaimV1.Winner({fid: 397099, amount: 0.001630656339176519 ether});
        winners[150] = IFarcasterClaimV1.Winner({fid: 402852, amount: 0.000815328169588259 ether});
        winners[151] = IFarcasterClaimV1.Winner({fid: 402886, amount: 0.000815328169588259 ether});
        winners[152] = IFarcasterClaimV1.Winner({fid: 403318, amount: 0.000815328169588259 ether});
        winners[153] = IFarcasterClaimV1.Winner({fid: 410055, amount: 0.000815328169588259 ether});
        winners[154] = IFarcasterClaimV1.Winner({fid: 412175, amount: 0.000815328169588259 ether});
        winners[155] = IFarcasterClaimV1.Winner({fid: 417506, amount: 0.001630656339176518 ether});
        winners[156] = IFarcasterClaimV1.Winner({fid: 419039, amount: 0.000815328169588259 ether});
        winners[157] = IFarcasterClaimV1.Winner({fid: 425572, amount: 0.000815328169588259 ether});
        winners[158] = IFarcasterClaimV1.Winner({fid: 427872, amount: 0.000815328169588259 ether});

        fc.setWinnersForRound(ROUND_ID, winners);

        vm.stopBroadcast();
    }
}