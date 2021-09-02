import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Brands/Branddata.dart/BrandCard.dart';
import 'package:flutter_app/widgets/Brands/Branddata.dart/BrandData.dart';

// ignore: must_be_immutable
class Brands extends StatelessWidget {
  List<BrandData> data = [
    BrandData(headerimage: 'assets/images/aldologo.png', title: '1000 Pts', footer1: 'P 500 OFF', footer2: 'on Shoes', image: 'assets/images/aldoimage.png'),
    BrandData(headerimage: 'assets/images/raffelslogo.png', title: '1000 Pts', footer1: 'Get Hair Spa', footer2: '& Styling', image: 'assets/images/raffelsimage.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Here is what you can get',
            style: TextStyle(
              fontSize: 15,
              color:Color(0xFF7B7BB3),
            ),
            ),
          Row(
            children: data.map((e) => BrandCard(data: e)).toList(),
          ),
          // ListView.builder(
          //   itemCount: data.length,
          //   itemBuilder: (context, index) {
          //     return BrandCard(
          //       headerimage: data[index].headerimage, 
          //       title: data[index].title,
          //       footer1: data[index].footer1,
          //       footer2: data[index].footer2,
          //       image: data[index].image
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}
