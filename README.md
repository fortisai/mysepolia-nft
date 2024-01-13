# MySepolia Sample NFT Contract

## Prerequisites

- [Node.js](https://nodejs.org/en/) (>= 10.16.0)

## Deployment

1. Install project

```bash
npm init --yes
npm install --force
npx hardhat init
```

2. Create an `.env` file from the `.env.example`

3. Upload your images to IPFS, add link to MySepoliaNFT.json, upload JSON to IPFS, add link to ``MySepoliaNFT.sol:21``

3. Deploy with

```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network sepolia
```

4. [BONUS] Deploy to **Polygon**: add polygon network to MetaMask, fund MATIC, make hardhat.config.js to polygon and run

```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network matic
```
