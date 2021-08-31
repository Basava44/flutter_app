import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'widgets/UserData.dart';
import 'widgets/Balance.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu_open_outlined),
            iconSize: 35,
            onPressed: () {},
            color: Colors.black,
          ),
          actions: <Widget>[
            Badge(
              badgeContent: Text('$badgeCount'),
              position: BadgePosition.topEnd(top: 4, end: 3),
              animationDuration: Duration(milliseconds: 0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    badgeCount += 1;
                  });
                },
                icon: Icon(Icons.notifications_none_outlined),
                iconSize: 35,
                color: Colors.black,
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
          child: Column(
            children: <Widget>[
              UserData(),
              Balance(),
            ],
          ),
        ),
      ),
    );
  }
}
