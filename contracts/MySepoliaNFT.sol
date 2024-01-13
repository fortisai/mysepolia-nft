// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract MySepoliaNFT is ERC721URIStorage {

    // Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("MySepoliaNFT", "MSNFT") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://olive-changing-manatee-502.mypinata.cloud/ipfs/QmaTyp1xxdKgchWRfsc6HCuVah4WXy2xNdETyCNY75nEo2?_gl=1*1naqkn0*_ga*NjIxOTM0ODA1LjE3MDUxMDc4MjQ.*_ga_5RMPXG14TE*MTcwNTEwNzkxOC4xLjEuMTcwNTEwODYwMC4yOS4wLjA.");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
