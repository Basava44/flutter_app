import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';

class RoamingPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Roaming Plans',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.colors.white,
                ),
                ),
            ),
          ),
            SizedBox(height: 2,),
          _card(),
        ],
      ),
    );
  }
}


Widget _card() {
  return Card(
    elevation: 0,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/roamingplans.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
            child: Text(
              'GoSakto',
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: ShaderMask(
                shaderCallback: (bounds) => 
                LinearGradient(
                  colors: [
                    AppTheme.colors.white,
                    Color(0xFFFFB2C6),
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Text(
              'Roam worry free!',
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 12,
                ),
            ),
          ),   
          SizedBox(height: 8,),
          Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black26,
                    Colors.black45,
                  ]
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: TextButton(
                  onPressed:(){},
                  child: Row(
                    children: [
                      Text(
                            'Explore Roaming Packs',
                            style: TextStyle(
                            color: AppTheme.colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                              Icons.chevron_right_rounded,
                              color: AppTheme.colors.white,
                          ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    ),
  );
}
