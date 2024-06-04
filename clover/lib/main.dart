import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:clover/main_page.dart';
import 'package:clover/login.dart';
import 'package:clover/student_id.dart';
import 'package:clover/signup.dart';
import 'package:clover/trade.dart';
import 'package:clover/community.dart';
import 'package:clover/reserve.dart';
import 'package:web3dart/web3dart.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Marketplace(),
      initialRoute: '/',
      routes: {
        '/' : (context) => const MainPage(),
        '/login' : (context) => const LoginPage(),
        '/id' : (context) => const StudentIdPage(),
        '/signup' : (context) => const SignUpPage(),
        '/trade' : (context) => const TradePage(),
        '/comunity' : (context) => const CommunityPage(),
        '/reserve' : (context) => const ReservePage()
      },
    );
  }
}
class Marketplace extends StatefulWidget {
  @override
  _MarketplaceState createState() => _MarketplaceState();
}
class _MarketplaceState extends State<Marketplace>{
  late http.Client httpClient;
  late Web3Client ethClient;

  @override
  void initState(){
    super.initState();
    httpClient = http.Client();
    ethClient = Web3Client(rpcUrl, httpClient);
  }

  Future<void> listItem(int price) async {
    final credentials = EthPrivateKey.fromHex(privateKey);
    final contract = DeployedContract(
      ContractAbi.fromJson(abi, "Marketplace"),
      EthereumAddress.fromHex(contractAddress),
    );
    final listFunction = contract.function("listItem");

    await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: listFunction,
        parameters: [BigInt.from(price)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blockchain Marketplace'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => listItem(100), // Example price
          child: Text('List Item'),
        ),
      ),
    );
  }
}
