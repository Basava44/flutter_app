import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'package:flutter_app/widgets/RecomendCard/RecomendCards.dart';
import 'package:flutter_app/widgets/RecomendCard/RecomendData.dart';

// ignore: must_be_immutable
class Recomended extends StatelessWidget {
  List<RecomendData> data = [
    RecomendData(title: 'GoUNLI350', data: '30 days UNLI to Globe'),
    RecomendData(title: 'GoUNLI180', data: '15 days UNLI to Globe'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recomended',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: AppTheme.colors.lightish_blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
          Row(
            children:data.map((e) => RecomendCards(data: e)).toList(),
          )
        ],
      ),
    );
  }
}
