import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_app/theme/AppTheme.dart';
import 'package:flutter_app/widgets/Brands.dart';
import 'package:flutter_app/widgets/ElevatedButton.dart';
import 'package:flutter_app/widgets/GlobalRewards.dart';
import 'package:flutter_app/widgets/LatestPromos.dart';
import 'package:flutter_app/widgets/RoamingPalns.dart';
import 'package:flutter_app/widgets/SpecialPromos.dart';
import 'package:flutter_app/widgets/Subscriptions.dart';
import 'package:flutter_app/widgets/UserData.dart';
import 'package:flutter_app/widgets/Balance.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int badgeCount = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.colors.white,
          leading: IconButton(
            icon: Image.asset('assets/images/menu-icon.png'),
            iconSize: 35,
            onPressed: () {},
            color: AppTheme.colors.black,
          ),
          actions: <Widget>[
            Badge(
              badgeContent: Text('$badgeCount'),
              position: BadgePosition.topEnd(top: 4, end: 3),
              animationDuration: Duration(milliseconds: 0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    badgeCount += 2;
                  });
                },
                icon: Icon(Icons.notifications_none_outlined),
                iconSize: 30,
                color: AppTheme.colors.black,
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 25,
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              UserData(),
              Balance(),
              SpecialPromos(),
              LatestPromos(),
              RoamingPlans(),
              GlobalRewards(),
              Brands(),
              Button(),
              SizedBox(
                height: 20,
              ),
              Subscriptions()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            selectedItemColor: AppTheme.colors.warm_blue_two,
            unselectedItemColor: AppTheme.colors.black,
            iconSize: 28,
            items: [
              BottomNavigationBarItem(
                  icon:Icon(Icons.home),
                  label: 'Home',
                  ),
              BottomNavigationBarItem(
                icon: Icon(Icons.style),
                label: 'LifeStyle',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_travel),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more),
                label: 'More',
              ),
            ]),
      ),
    );
  }
}
