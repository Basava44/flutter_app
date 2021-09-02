import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'BalanceData.dart';

class BalanceCard extends StatelessWidget {
  final BalanceData data;
  BalanceCard({ required this.data });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 0, 5),
      child: Card(
        color: AppTheme.colors.white,
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
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppTheme.colors.greyish_brown_two,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  data.balance,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.colors.dark_grey,
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
                    color: AppTheme.colors.black_two,
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

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
