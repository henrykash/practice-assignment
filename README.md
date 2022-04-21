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

contract_address: 0x12F35B84e744959CCb223EFC454cC257F36288eb
https://rinkeby.etherscan.io/tx/0x3aa69dc06988d0b76ea412c4593d9532c8dce47f6d96c94c346bb779228a316a

For the Contract Using Mapping of Struct to Create and Update Entity deployment details:

contract address: 0x78bD9f9FF9fC3DDC3b9581620C088a5b67A6cb43
https://rinkeby.etherscan.io/tx/0xecddb2ae7d79e269485b5cb4ca09fd1d9f9af74a2c213d9d23ae24236138f63c

# Remix IDE
I recommend using Remix IDE here, https://remix.ethereum.org/ to deploy the two SmartContracts and do more Testing on the same implementation on the two smart contracts. thereby testing the effect on **execution** **gas** between the two implementation of smartcontract

