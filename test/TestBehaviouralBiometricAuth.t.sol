pragma solidity ^0.8.0;
import "../src/BehaviouralBiometricAuth.sol";
import "forge-std/Test.sol";

contract TestBehaviouralBiometricAuth is Test {
    BehaviouralBiometricAuth auth;

bytes32[]  data = [    bytes32(0x0123456789012345678901234567890123456789012345678901234567890123),    bytes32(0x0123456789012345678901234567890123456789012345678901234567890124),    bytes32(0x0123456789012345678901234567890123456789012345678901234567890125)];

    function setUp() public {
        auth = new BehaviouralBiometricAuth(
            msg.sender,
            data,

            3
        );
    }

    function testAuthenticate() public {
        // Test successful authentication
        assert(auth.authenticate(data));

        // Test unsuccessful authentication
        data[2] = bytes32(0x0123456789012345678901234567890123456789012345678901234567890126);
        assert(!auth.authenticate(data));
    }
}
