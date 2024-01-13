const { ethers } = require("hardhat");

async function main() {
    const MySepoliaNFT = await ethers.getContractFactory("MySepoliaNFT");
    console.log("Deploying Contract...");
    const msnft = await MySepoliaNFT.deploy();
    const txHash = msnft.deployTransaction.hash;
    const txReceipt = await ethers.provider.waitForTransaction(txHash);
    console.log("Contract deployed to address:", txReceipt.contractAddress);
    console.log("Minting NFT...");
    let txn = await elon.mintNFT();
    await txn.wait();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().then(() => process.exit(0))
.catch((error) => {
    console.error(error);
    process.exit(1);
}); 
      