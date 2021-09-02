import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';

class SliderCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card1(),
        Card2()
      ],
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 5, 0),
      height: 168,
      width: 140,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            AppTheme.colors.red_brown,
            AppTheme.colors.red_brown_two,
          ]
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Image.asset('assets/images/raffelslogo.png',
          height: 43,
          width: 102,
          ),
          SizedBox(height: 39,),
          Opacity(
            opacity: 0.6,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppTheme.colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Subscribe for',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'P 129.00 /m',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 5, 0),
      height: 168,
      width: 140,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            AppTheme.colors.grape_purple,
            AppTheme.colors.grape_purple,
          ]
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Image.asset('assets/images/hoq.png'),
          SizedBox(height: 40,),
          Opacity(
            opacity: 0.6,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppTheme.colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Subscribe for',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'P 129.00 /m',
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
