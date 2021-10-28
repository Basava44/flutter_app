import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';

class GlobalRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 10, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
              'Global Rewards',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppTheme.colors.white,
              ),
              ),
          ),
            SizedBox(height: 12,),
            Card(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[
                      AppTheme.colors.mango,
                      AppTheme.colors.tangerine,
                    ],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'YOUR REWARD POINTS',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.colors.white,
                          ),
                          ),
                          SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            '7250 Pts',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.colors.white,
                            ),
                            ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/box.png'),
                  ],
                ),
                ),
              ),
        ],),
    );
  }
}