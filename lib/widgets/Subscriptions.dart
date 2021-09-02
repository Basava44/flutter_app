import 'package:flutter/material.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'package:flutter_app/widgets/Slider.dart';

class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: AppTheme.colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: 0.35,
              child: Text(
                'My Subscriptions',
                style: TextStyle(
                  color: AppTheme.colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  AppTheme.colors.pale_salmon,
                  AppTheme.colors.cornflower,
                ],
                tileMode: TileMode.clamp,
              ).createShader(bounds),
              child: Text(
                'With remaining 12GB,',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.colors.white,
                ),
              ),
            ),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  AppTheme.colors.pale_salmon,
                  AppTheme.colors.cornflower,
                ],
                tileMode: TileMode.clamp,
              ).createShader(bounds),
              child: Text(
                'you can watch 640 min of video',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            netFlixTitle(),
            MovieCards(),
            primeTitle(),
            MovieCards(),
            Text(
              'You might also like',
              style: TextStyle(
                fontSize: 14,
                color: AppTheme.colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.16,
              ),
              ),
              SliderCards()
          ],
        ));
  }
}

class MovieCards extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
          child: Image.asset('assets/images/netflix1.png'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
          child: Image.asset('assets/images/netflix2.png'),
        ),
      ],
    );
  }
}

Widget netFlixTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            'Popular on',
            style: TextStyle(
              color: AppTheme.colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Image.asset(
            'assets/images/netlflixlogo.png',
            width: 54,
            height: 22,
          ),
        ],
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              color: AppTheme.colors.lightish_blue,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ))
    ],
  );
}

Widget primeTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            'Latest on',
            style: TextStyle(
              color: AppTheme.colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Image.asset(
            'assets/images/primelogo.png',
            width: 54,
            height: 22,
          ),
        ],
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyle(
              color: AppTheme.colors.lightish_blue,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ))
    ],
  );
}

// Widget NetflixSlides() {
//   return Expanded(
//       child: ListView.builder(
//     shrinkWrap: true,
//     scrollDirection: Axis.horizontal,
//     itemCount: 15,
//     itemBuilder: (BuildContext context, int index) => Card(
//       child:Center(
//         child: Text('Dummy Card Data'),
//       ),
//     ),
//   ));
// }
