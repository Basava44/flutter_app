import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/RecomendCard/RecomendData.dart';

class RecomendCards extends StatelessWidget {

  final RecomendData data;
  RecomendCards({ required this.data });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xFF3B41E2),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                ),
                ),
              Text(
                data.data,
                style: TextStyle(
                  color: Colors.white,
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
