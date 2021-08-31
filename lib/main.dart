import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu_open_outlined),
          iconSize: 30,
          onPressed: () {},
          color: Colors.black,
        ), 
        actions: <Widget>[
          Badge(
            badgeContent: Text('$badgeCount'),
            position: BadgePosition.topEnd(top: 4, end: 3),
            animationDuration: Duration(milliseconds: 0),
            elevation: 0,
            child: IconButton(
              onPressed: () {
                setState(() {
                  badgeCount += 1;
                });
              },
              icon: Icon(Icons.notifications_none_outlined),
              iconSize: 32,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
    );
  }
}
