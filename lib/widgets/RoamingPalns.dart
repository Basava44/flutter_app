import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';

class RoamingPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
              'Roaming Plans',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppTheme.colors.white,
              ),
              ),
          ),
            SizedBox(height: 2,),
          Card(
            elevation: 0,
            child: Container(
              width: 320,
              height: 175,
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
                    color: AppTheme.colors.white,
                    fontSize: 14,
                  ),
                  ),
                  SizedBox(height: 12,),
                ShaderMask(
                  shaderCallback: (bounds) => 
                  LinearGradient(
                    colors: [
                      Color(0xffc8b9ff),
                      Color(0xffffffff),
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds),
                  child: Text(
                    'Planing for a foreign trip?',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                  SizedBox(height: 4,),
                Text(
                  'Roam worry free!',
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 30,),
                Container(
                  //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  // decoration: BoxDecoration(
                  //   color: Colors.black45,
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                        'Explore Roaming Packs',
                        style: TextStyle(
                        color: AppTheme.colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                    Icon(
                        Icons.arrow_right_outlined,
                        color: AppTheme.colors.white,
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