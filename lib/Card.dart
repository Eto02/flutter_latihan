import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.adb, 'Serangga Android'),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(iconData, color: Colors.green),
            margin: EdgeInsets.all(5),
          ),
          Text(text)
        ],
      ),
    );
  }
}
