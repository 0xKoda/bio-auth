pragma solidity ^0.8.13;
import "BehaviouralBiometricAuth.sol";

contract TestBehaviouralBiometricAuth {
    BehaviouralBiometricAuth auth;

    constructor() public {
        auth = new BehaviouralBiometricAuth(
            msg.sender,
            [
                0x0123456789012345678901234567890123456789012345678901234567890123,
                0x0123456789012345678901234567890123456789012345678901234567890124,
                0x0123456789012345678901234567890123456789012345678901234567890125
            ],
            2
        );
    }

    function testAuthenticate() public {
        // Test successful authentication
        bytes32[] memory data = [            0x0123456789012345678901234567890123456789012345678901234567890123,            0x0123456789012345678901234567890123456789012345678901234567890124,            0x0123456789012345678901234567890123456789012345678901234567890125        ];
        assert(auth.authenticate(data));

        // Test unsuccessful authentication
        data[2] = 0x0123456789012345678901234567890123456789012345678901234567890126;
        assert(!auth.authenticate(data));
    }
}
