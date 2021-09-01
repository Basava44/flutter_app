import 'package:flutter/material.dart';
import 'LatestPromoCardData.dart';

class LatestPromoCard extends StatelessWidget {
  final LatestPromoCardData data;

  LatestPromoCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Card(
        elevation: 0,
        child: Container(
          height: 168,
          margin: EdgeInsets.fromLTRB(18, 10, 0, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(data.image),
            fit: BoxFit.fill,
          )),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Text(data.title1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30,),
                Text(data.title2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5,),
                Text(data.amount,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
