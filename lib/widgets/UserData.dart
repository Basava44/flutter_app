import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 02, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('My Prepaid',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(children: [
                  Text(
                  '092787368820',
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                ],),
              ),
              Container(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add),
                  color: Colors.black,
                  iconSize: 25,
                  ),
              )
            ],
          )
        ],
        ),
    );
  }
}
