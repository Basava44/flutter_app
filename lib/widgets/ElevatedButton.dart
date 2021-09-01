import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
        child: ElevatedButton(

          child: Text('Find Out More'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 18,),
            onPrimary: Colors.black,
            primary: Colors.white,
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            side: BorderSide(color: Colors.black, width: 1),
            elevation: 0,
          ),
      ));
  }
}
