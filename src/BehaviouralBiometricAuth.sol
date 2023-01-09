pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";

contract BehaviouralBiometricAuth {
    using SafeMath for uint256;

    // Address of the user to be authenticated
    address public user;
    // Behavioural biometric data of the user
    bytes32[] public biometricData;
    // Threshold for determining whether the user's biometric data matches the stored data
    uint256 public threshold;

    constructor(address _user, bytes32[] memory _biometricData, uint256 _threshold) public {
        user = _user;
        biometricData = _biometricData;
        threshold = _threshold;
    }

    // Authenticates the user based on their behavioural biometric data
    function authenticate(bytes32[] memory data) public view returns (bool) {
        // Calculate the similarity between the user's biometric data and the stored data
        uint256 similarity = 0;
        for (uint256 i = 0; i < biometricData.length; i++) {
            if (biometricData[i] == data[i]) {
                similarity = similarity.add(1);
            }
        }

        // Return whether the similarity is above the threshold
        return similarity >= threshold;
    }
}
