import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'package:flutter_app/widgets/RecomendCard/RecomendData.dart';

class RecomendCards extends StatelessWidget {

  final RecomendData data;
  RecomendCards({ required this.data });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: AppTheme.colors.lightish_blue,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 9,
                  color: AppTheme.colors.white,
                ),
                ),
              Text(
                data.data,
                style: TextStyle(
                  color: AppTheme.colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )
                ),
            ],
            ),
        )
      ),
    );
  }
}
