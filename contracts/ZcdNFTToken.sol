// SPDX-License-Identifier:  MIT

pragma solidity ^0.8.18;
import "./NFTReceive.sol";

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ZcdNFTToken is ERC721 {
    
 
    constructor() ERC721("ZcdTokenGrasshopper","ZCDGH") {
        _mint(msg.sender,10);
    }
}