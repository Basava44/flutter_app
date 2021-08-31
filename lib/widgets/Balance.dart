import 'package:flutter/material.dart';
import 'Balance/BalanceCard.dart';
import 'Balance/BalanceData.dart';

class Balance extends StatelessWidget {

  List<BalanceData> data = [
    BalanceData(title: 'Load Balance', balance: 'P 1675.00', icon: 'K', validity: 'Valid till 26 Dec'),
    BalanceData(title: 'Data Balance', balance: '300 MB', icon: 'L', validity: 'of 12 GB'),
    // BalanceData(title: 'epsom', balance: '230', icon: 'E', validity: '34'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(
       children:data.map((e) => BalanceCard(data: e)).toList(),
     ),
      color: Colors.blue[50],
    );
  }
}