import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Text Style'),
      ),
      body: Center(
        child: Text(
          'Ini Adalah Text',
          style: TextStyle(
              fontFamily: "Poppins",
              fontStyle: FontStyle.italic,
              fontSize: 55,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy),
        ),
      ),
    );
  }
}
