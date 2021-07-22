import 'package:flutter/material.dart';

class ImgApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Image'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
            image: AssetImage("assets/1.jpg"),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
