import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/LatestPromos/LatestPromoCard.dart';
import 'package:flutter_app/widgets/LatestPromos/LatestPromoCardData.dart';


// ignore: must_be_immutable
class LatestPromos extends StatelessWidget {

  List<LatestPromoCardData> data = [
    LatestPromoCardData(title1: 'Spotify Premium', title2: 'Subscribe for', amount: 'P 129.00 /m', image: 'assets/images/spotify.png'),
    LatestPromoCardData(title1: 'Facebook Surf', title2: 'Get pack for', amount: 'P 50.00 /m', image: 'assets/images/facebook.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('he;;o'),
          Row(
            children: data.map((e) => LatestPromoCard(data: e,)).toList(),
          ),
        ],
      ),    
    );
  }
}