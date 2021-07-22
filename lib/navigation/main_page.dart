import 'package:flutter/material.dart';
import 'package:latihan/navigation/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to Second Page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ));
            },
          ),
        ));
  }
}

class ThridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('3 Page'), automaticallyImplyLeading: true),
        body: Center(
          child: ElevatedButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
