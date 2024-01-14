// SPDX-License-Identifier:  GPL-3.0

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract NFTReceive {


    IERC721 public itemNFT;

    mapping (uint256=>address) public  originalOwner;


    constructor(IERC721 _address){
        itemNFT = _address;
    }

      function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4){
        originalOwner[tokenId] = from;
        return IERC721Receiver.onERC721Received.selector;
    }   

    function depositNFT(uint256 tokenId) external {
        originalOwner[tokenId] = msg.sender;
        itemNFT.safeTransferFrom(msg.sender,address(this),tokenId);
    }


    function withdrawNFT(uint256 tokenId) external {

        require(originalOwner[tokenId]==msg.sender,"Not original owner");
        itemNFT.safeTransferFrom(address(this),msg.sender,tokenId);
        
    }
}