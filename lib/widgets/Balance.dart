import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'package:flutter_app/widgets/Recomended.dart';
import 'Balance/BalanceCard.dart';
import 'Balance/BalanceData.dart';

// ignore: must_be_immutable
class Balance extends StatelessWidget {

  List<BalanceData> data = [
    BalanceData(title: 'Load Balance', balance: 'P 1675.00', icon: 'assets/images/card1.png', validity: 'Valid till 26 Dec'),
    BalanceData(title: 'Data Balance', balance: '300 MB', icon: 'assets/images/card1.png', validity: 'of 12 GB'),
    //BalanceData(title: 'epsom', balance: '230', icon: 'E', validity: '34'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.ice_blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
     child: Column(
       children:[ Row(
         children:data.map((e) => BalanceCard(data: e)).toList(),
       ),
       Recomended(),
       ],
     ),
    );
  }
}

// Widget NetflixSlides() {
//   return Expanded(
//       child: ListView.builder(
//     shrinkWrap: true,
//     scrollDirection: Axis.horizontal,
//     itemCount: 15,
//     itemBuilder: (BuildContext context, int index) => Card(
//       child:Center(
//         child: Text('Basava the Don'),
//       ),
//     ),
//   ));
// }