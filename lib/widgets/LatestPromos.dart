import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
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
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShaderMask(
                shaderCallback: (bounds) => 
                LinearGradient(
                  colors: [
                    AppTheme.colors.sapphire,
                    AppTheme.colors.lavender_pink,
                  ],
                  tileMode: TileMode.clamp,
                ).createShader(bounds),
                child: Text(
                  'Latest Promos',
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: AppTheme.colors.lightish_blue,
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