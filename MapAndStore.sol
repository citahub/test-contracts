pragma solidity ^0.4.24;

contract MapAndStore {
    struct testStruct {
        address ctrAddr;
        bytes4 fnName;
        address executor;
    }

    mapping(uint => testStruct) public testMapping;

    constructor() {
        testMapping[0] = testStruct(
            0xfFFFffFfFFffFFFffFFffFfffFFffffFFF020001,
            0x12345678,
            0xfFFFffFfFFffFFFffFFffFfffFFffffFFF020001
        );
    }

    function test() view external {
        address testAddr = testMapping[now].ctrAddr;
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, testAddr)
        }
    }
}
