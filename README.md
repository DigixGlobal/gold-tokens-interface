# Introduction

**Digix Gold Token API Interface**

The Digix Gold Token contract follows the [Ethereum Token Standard API](https://github.com/ethereum/wiki/wiki/Standardized_Contract_APIs)


## Example Usage

### Initialization 

```
var goldTokenContractAddress = "0x55b9a11c2e8351b4ffc7b11561148bfac9977855";
var goldTokenContractAbi = JSON.parse(fs.readFileSync("GoldTokenLedger.abi.json", 'utf8'));
var Web3 = require('web3');
var web3 = new Web3();
web3.setProvider(new web3.providers.HttpProvider('http://localhost:8545'));
var GoldToken = web3.eth.contract(goldTokenContractAbi);
var goldToken = GoldToken.at(goldTokenContractAddress);
```

### Get balance
```
goldToken.balanceOf.call(web3.eth.coinbase);
```

### Transfer 1 gram

```
var recipient = '0x4f53269e422711d4725f7381444c7f66f7d05788';
var amount = 1000000000; // 1 gram
goldToken.transfer.sendTransaction(recipient, amount, {from: web3.eth.coinbase, gas: 150000, gasPrice: web3.eth.toWei(60, 'shannon')});
```
