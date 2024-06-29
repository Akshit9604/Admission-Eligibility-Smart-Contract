// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdmissionEligibility {
    uint256 public studentAchievementScore = 33;
    address public manager;

    event scoreUpdated(uint256 newScore);

    modifier onlyManager() {
        require(msg.sender == manager, "Access denied: Not the manager");
        _;
    }

    constructor() {
        manager = msg.sender;
    }

    function assessForTopTier(uint256 newScore) external onlyManager {
        require(newScore > 99, "Score does not meet requirements for top-tier institutions");
        studentAchievementScore = newScore;
        emit scoreUpdated(newScore);
    }

    function assessForMidTier(uint256 newScore) external onlyManager {
        require(newScore > 90, "Score does not meet requirements for mid-tier institutions");
        studentAchievementScore = newScore;
        emit scoreUpdated(newScore);
    }

    function assessForEntryTier(uint256 newScore) external onlyManager {
        require(newScore > 70, "Score does not meet requirements for entry-tier institutions");
        studentAchievementScore = newScore;
        emit scoreUpdated(newScore);
    }

    function checkMinimumQualification() external view {
        assert(studentAchievementScore >= 33); // Minimum qualification check
    }

    function assessForAnyInstitution(uint256 newScore) external onlyManager {
        if (newScore <= 45) {
            revert("Score is insufficient for any institution");
        }
        studentAchievementScore = newScore;
        emit scoreUpdated(newScore);
    }
}
