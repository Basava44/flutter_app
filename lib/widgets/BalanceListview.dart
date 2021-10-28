import 'package:flutter/material.dart';
import 'Balance/BalanceCard.dart';
import 'Balance/BalanceData.dart';

class BalanceListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BalanceData> data = [
      BalanceData(
          title: 'Load Balance',
          balance: 'P 1675.00',
          icon: 'assets/images/card1.png',
          validity: 'Valid till 26 Dec'),
      BalanceData(
          title: 'Data Balance',
          balance: '300 MB',
          icon: 'assets/images/card1.png',
          validity: 'of 12 GB'),
      BalanceData(title: 'epsom', balance: '230', icon: 'E', validity: '34'),
    ];
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return BalanceCard(data: data[index]);
        },
      ),
    );
  }
}
