import 'package:flutter/material.dart';

class GlobalRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Global Rewards',
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
                color: Colors.orange.shade300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'YOUR REWARD POINTS',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(height: 4,),
                    Text(
                      '7250 Pts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                  ],
                ),
                ),
              ),
        ],),
    );
  }
}