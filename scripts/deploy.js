async function main() {
    const msNFT = await ethers.deployContract("contracts/MySepoliaNFT.sol:msNFT");
    const mysepolia = await msNFT.waitForDeployment();
    console.log("Deploying Contract...")
    console.log("Contract deployed to address:", await mysepolia.getAddress());
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
