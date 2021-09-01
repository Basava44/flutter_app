import 'package:flutter/material.dart';

class RoamingPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Roaming Plans',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade900,
            ),
            ),
            SizedBox(height: 12,),
          Card(
            elevation: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/roamingplans.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 12,),
                Text(
                  'GoSakto',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  ),
                  SizedBox(height: 12,),
                Text(
                  'Planing for a foreign trip?',
                  style: TextStyle(
                    color: Colors.pink.shade100,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 2,),
                Text(
                  'Roam worry free!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  // decoration: BoxDecoration(
                  //   color: Colors.black45,
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: Row(
                  children: [
                    Text(
                        'Explore Roaming Packs',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                    Icon(
                        Icons.arrow_right_outlined,
                        color: Colors.white,
                    ),
                  ],
                ),
                )
              ],),
            ),
          )
        ],
      ),
    );
  }
}