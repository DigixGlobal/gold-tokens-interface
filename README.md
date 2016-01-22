# Example Usage

## Initialization 

```
var goldTokenContractAddress = "0x55b9a11c2e8351b4ffc7b11561148bfac9977855";
var goldTokenContractAbi = JSON.parse(fs.readFileSync("GoldTokenLedger.abi.json", 'utf8'));
var Web3 = require('web3');
var web3 = new Web3();
web3.setProvider(new web3.providers.HttpProvider('http://localhost:8545'));
var GoldToken = web3.eth.contract(goldTokenContractAbi);
var goldToken = GoldToken.at(goldTokenContractAddress);
```

## Transactions
```
goldToken.balanceOf.call(web3.eth.coinbase);
```

