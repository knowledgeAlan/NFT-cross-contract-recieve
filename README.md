# NTF token transfer in different contract

 ## 1:Create NFT token smart contract.

 <img width="651" alt="image" src="https://github.com/knowledgeAlan/NFT-cross-contract-recieve/assets/5988231/9b70f3a8-78d6-4859-aa91-0780f2221940">


## 2:Create smart contract transfer NFT token.

<img width="739" alt="image" src="https://github.com/knowledgeAlan/NFT-cross-contract-recieve/assets/5988231/167f3f01-2966-4d5c-b415-540cf66774df">


## 3:Deploy ZcdNFTToken and NFTReceive contract.

![image](https://github.com/knowledgeAlan/NFT-cross-contract-recieve/assets/5988231/a5cffbd2-f06d-47b0-8ba9-171d41f155b9)


## 4: To parameter safeTransferFrom can be an external account or contract address. It can't transfer success when the contract doesn't implement the onERC721Received method. Because call _checkOnERC721Received after execute.

![image](https://github.com/knowledgeAlan/NFT-cross-contract-recieve/assets/5988231/555467fe-802b-47c5-bfbd-65e45c4edbf6)


## 5:[Video link](https://www.tiktok.com/@zcdalan/video/7323588256828820737?is_from_webapp=1&sender_device=pc&web_id=7323587886779008513)
