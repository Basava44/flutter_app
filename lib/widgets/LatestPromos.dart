import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/LatestPromos/LatestPromoCard.dart';
import 'package:flutter_app/widgets/LatestPromos/LatestPromoCardData.dart';


// ignore: must_be_immutable
class LatestPromos extends StatelessWidget {

  List<LatestPromoCardData> data = [
    LatestPromoCardData(title1: 'Spotify Premium', title2: 'Subscribe for', amount: 'P 129.00 /m', image: 'assets/images/spotify.png', icon:'assets/images/spotifylogo.png' ),
    LatestPromoCardData(title1: 'Facebook Surf', title2: 'Get pack for', amount: 'P 50.00 /m', image: 'assets/images/facebook.png', icon: 'assets/images/facebooklogo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Promos',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: data.map((e) => LatestPromoCard(data: e,)).toList(),
          ),
        ],
      ),    
    );
  }
}