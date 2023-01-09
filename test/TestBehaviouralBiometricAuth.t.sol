pragma solidity ^0.8.0;
import "../src/BehaviouralBiometricAuth.sol";
import "ds-test/test.sol";

contract TestBehaviouralBiometricAuth {
    BehaviouralBiometricAuth auth;

bytes32[]  data = [    bytes32(0x0123456789012345678901234567890123456789012345678901234567890123),    bytes32(0x0123456789012345678901234567890123456789012345678901234567890124),    bytes32(0x0123456789012345678901234567890123456789012345678901234567890125)];

    constructor() {
        auth = new BehaviouralBiometricAuth(
            msg.sender,
            data,

            2
        );
    }

    function testAuthenticate() public {
        // Test successful authentication
        assert(auth.authenticate(data) == true);

        // Test unsuccessful authentication
        data[2] = bytes32(0x0123456789012345678901234567890123456789012345678901234567890126);
        assert(auth.authenticate(data) == false);
    }
}
