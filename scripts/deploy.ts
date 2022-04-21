const { ethers } = require("hardhat");

const main = async () => {
    const [deployer] = await ethers.getSigners();
    const factory = await ethers.getContractFactory("Practice2");
    const deployedSwapper = await factory.deploy();

    let data = {
        address: deployedSwapper.address,
        abi: JSON.parse(JSON.stringify(deployedSwapper.interface.format("json"))),
    };

    console.log(data);

};

main()
    .then(() => process.exit(0))
    .catch((err) => {
        console.log(err);
        process.exit(1);
    });
