# Admission-Eligibility-Smart-Contract
Certainly! Below is a README file that provides an overview, instructions, and considerations for the `AdmissionEligibility` contract.

---

# Admission Eligibility Smart Contract

## Overview

The `AdmissionEligibility` smart contract manages and evaluates a student's achievement score for admission into different tiers of institutions. It provides functionalities for updating the score, checking minimum qualifications, and ensuring only authorized personnel can modify the score.

## Contract Details

- **Contract Name:** AdmissionEligibility
- **License:** MIT License
- **Solidity Version:** ^0.8.0

## Features

1. **Student Achievement Score**
   - `uint256 public studentAchievementScore`: Tracks the current achievement score of the student, initialized to 33.

2. **Manager Address**
   - `address public manager`: Stores the address of the contract manager who has administrative privileges.

3. **Events**
   - `event scoreUpdated(uint256 newScore)`: Triggered whenever the student's achievement score is updated.

4. **Modifiers**
   - `modifier onlyManager()`: Restricts access to specific functions to only the contract manager, ensuring security and control.

5. **Functions**

   - **Assessment Functions:**
     - `assessForTopTier(uint256 newScore)`: Updates the student's score for top-tier institutions if `newScore` exceeds 99.
     - `assessForMidTier(uint256 newScore)`: Updates the student's score for mid-tier institutions if `newScore` exceeds 90.
     - `assessForEntryTier(uint256 newScore)`: Updates the student's score for entry-tier institutions if `newScore` exceeds 70.
     - `assessForAnyInstitution(uint256 newScore)`: Updates the student's score for any institution if `newScore` is above 45.

   - **View Functions:**
     - `checkMinimumQualification()`: Checks if the student's current score meets the minimum qualification requirement (minimum score of 33).

## Usage Instructions

### Prerequisites

- Ensure you have access to an Ethereum development environment or testnet.
- Install necessary tools such as a Solidity compiler and a wallet like MetaMask.

### Deployment

1. Compile the `AdmissionEligibility.sol` contract using a Solidity compiler.
2. Deploy the compiled contract to your desired Ethereum network (mainnet or testnet) using tools like Remix, Truffle, or Hardhat.
3. Specify the initial `manager` address during deployment, which will have exclusive access to modify scores.

### Interacting with the Contract

- **Updating Scores:** Only the `manager` address can update the student's score using the assessment functions (`assessForTopTier`, `assessForMidTier`, `assessForEntryTier`, `assessForAnyInstitution`).
  
- **Checking Scores:** Anyone can view the current student's achievement score using the `checkMinimumQualification` function, which verifies if the score meets the minimum eligibility criteria.

### Security Considerations

- **Access Control:** Ensure that only trusted addresses are assigned as `manager` during deployment to prevent unauthorized modifications.
  
- **Error Handling:** The contract uses `require` statements to validate input and `revert` statements to revert transactions with appropriate error messages, enhancing security and reliability.

### License

This contract is licensed under the MIT License, allowing for free use, modification, and distribution subject to the terms of the license.

---

This README provides a comprehensive guide to understanding and deploying the `AdmissionEligibility` smart contract, ensuring clarity on its purpose, functionalities, deployment steps, and security considerations. Adjustments can be made based on specific deployment environments and requirements.
