import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'LatestPromoCardData.dart';

class LatestPromoCard extends StatelessWidget {
  final LatestPromoCardData data;
  LatestPromoCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 20),
      child: Card(
        elevation: 0,
        child: Container(
          height: 168,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(data.image),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  data.icon,
                  width: 18,
                  height: 18,
                  ),
                SizedBox(height: 15,),
                Text(
                  data.title1,
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  data.title2,
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data.amount,
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
