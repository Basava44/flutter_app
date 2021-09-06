import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';

class SpecialPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20,0),
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
              'Special Promos',
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/promocard.png'),
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
                      AppTheme.colors.white,
                      Color(0xFFFFB2C6),
                    ],
                    tileMode: TileMode.clamp,
                  ).createShader(bounds),
                  child: Text(
                    'Create What Matters',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                  SizedBox(height: 4,),
                Text(
                  'Promo that’s all you! ',
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 20,),
                TextButton(
                  onPressed: (){},
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                    children: [
                      Text(
                          'Create your own Promo',
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