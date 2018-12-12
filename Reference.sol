pragma solidity ^0.4.24;

contract Reference {
    uint[] x;
    address owner;

    constructor() {
        owner = msg.sender;
    }
}
