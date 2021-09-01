import 'package:flutter/material.dart';
import 'BrandData.dart';

class BrandCard extends StatelessWidget {
  final BrandData data;
  BrandCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
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
            padding: const EdgeInsets.fromLTRB(10, 15, 45, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  data.headerimage,
                  width: 64,
                  height: 28,
                  ),
                SizedBox(height: 15,),
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  data.footer1,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data.footer2,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
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
