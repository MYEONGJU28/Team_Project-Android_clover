// lib/constants.dart

const String abi = '''
[
  {
    "constant": false,
    "inputs": [{"name": "_price", "type": "uint256"}],
    "name": "listItem",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "constant": false,
    "inputs": [{"name": "_id", "type": "uint256"}],
    "name": "buyItem",
    "outputs": [],
    "payable": true,
    "stateMutability": "payable",
    "type": "function"
  },
  {
    "constant": true,
    "inputs": [],
    "name": "itemCount",
    "outputs": [{"name": "", "type": "uint256"}],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
  },
  {
    "constant": true,
    "inputs": [{"name": "", "type": "uint256"}],
    "name": "items",
    "outputs": [
      {"name": "id", "type": "uint256"},
      {"name": "seller", "type": "address"},
      {"name": "buyer", "type": "address"},
      {"name": "price", "type": "uint256"},
      {"name": "sold", "type": "bool"}
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
  }
]
''';

const String contractAddress = "YOUR_CONTRACT_ADDRESS";
const String rpcUrl = "http://127.0.0.1:7545"; // Ganache URL
const String privateKey = "YOUR_PRIVATE_KEY";
