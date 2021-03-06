import 'package:flutter/material.dart';

class SpacerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Spacer'),
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Spacer(flex: 1),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Spacer(flex: 2),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Spacer(flex: 3),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
