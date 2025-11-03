// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployMonad is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x3bd359C1119dA7Da1D913D1C4D2B7c461115433A,
            v2Factory: 0xe26dd94f67Ca3615fcaF6062750147F37Df84F7a,
            v3Factory: 0xD404cbEE8213aD72f545c07fA47c320CAB86677b,
            pairInitCodeHash: 0x0757d600d332ab414bff776d7ba09eb55c029272b57d995e41f571edfb1f6fbe,
            poolInitCodeHash: 0x30203aa225dc2b1c892323df608368caf4846dfb459fe17cd3ddccb1f4c68449,
            v4PoolManager: address(0),
            v3NFTPositionManager: 0x792116870fB00965ebC81F05F4B9a364aF9d2EFe,
            v4PositionManager: address(0)
        });

        unsupported = 0x76D631990d505E4e5b432EEDB852A60897824D68;
    }
}
