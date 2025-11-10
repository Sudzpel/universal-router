// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployMonad is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x3bd359C1119dA7Da1D913D1C4D2B7c461115433A,
            v2Factory: 0xCe104732685B9D7b2F07A09d828F6b19786cdA32,
            v3Factory: 0x30Db57A29ACf3641dfc3885AF2e5f1F5A408D9CB,
            pairInitCodeHash: 0x0757d600d332ab414bff776d7ba09eb55c029272b57d995e41f571edfb1f6fbe,
            poolInitCodeHash: 0x30203aa225dc2b1c892323df608368caf4846dfb459fe17cd3ddccb1f4c68449,
            v4PoolManager: address(0),
            v3NFTPositionManager: 0x5161ebb7E418C593553D0dA287ad54D128aa2B9E,
            v4PositionManager: address(0)
        });

        unsupported = address(0);
    }
}
