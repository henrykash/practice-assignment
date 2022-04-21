# practice-assignment
The Purpose of this assignment is to compare the **Gas Cost** between 2 different designed contracts with the same functionality. Goal is to conclude which implemetation takes more **Execution Gas** on deployment of the smartcontracts and also on executing the same implementations on the two deployed **smartcontracts**

# Run command npm i
This will install all dependencies required by the project.

# Deploying smart-contract using Hardhat
To deploy the smartcontract run the following command: **npx hardhat run --network rinkeby scripts/deploy.ts**
This will Compile and then deploy , giving you the smart-contract address and the ABI on the terminal. 

NOTE: Make Sure Before deploying the smartcontract on the scripts/deploy.ts Folder, Change "Practice2" to match the name of the Smart Contract you want to Deploy

    const [deployer] = await ethers.getSigners();
   
    const factory = await ethers.getContractFactory("Practice2");
    
    const deployedSwapper = await factory.deploy();

For the Contract Using Array of Struct to Create and Update Entity deployment details:

contract_address: 0x1C4194f9aa63deC32283e88C558A2C9d46cA0dCd
https://rinkeby.etherscan.io/address/0x1C4194f9aa63deC32283e88C558A2C9d46cA0dCd

For the Contract Using Mapping of Struct to Create and Update Entity deployment details:

contract address: 0xE0Bdd31D2A104d55Ee90Fbef3fbE3C27890b489A
https://rinkeby.etherscan.io/address/0xE0Bdd31D2A104d55Ee90Fbef3fbE3C27890b489A

# Remix IDE
I recommend using Remix IDE here, https://remix.ethereum.org/ to deploy the two SmartContracts and do more Testing on the same implementation on the two smart contracts. thereby testing the effect on **execution** **gas** between the two implementation of smartcontract

