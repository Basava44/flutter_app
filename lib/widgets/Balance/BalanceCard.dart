import 'package:flutter/material.dart';
import 'BalanceData.dart';

class BalanceCard extends StatelessWidget {
  final BalanceData data;
  BalanceCard({ required this.data });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 0, 5),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 50, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(data.icon),
                  radius: 16,
                  backgroundColor: Colors.grey[200],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  data.balance,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  data.validity,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 10,
      ),
    );
  }
}
