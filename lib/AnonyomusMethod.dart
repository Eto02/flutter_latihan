import 'package:flutter/material.dart';

class AnonApp extends StatefulWidget {
  @override
  _AnonAppState createState() => _AnonAppState();
}

class _AnonAppState extends State<AnonApp> {
  String message = "Ini adalah Text";
  void hitButton() {
    setState(() {
      message = "Tombol sudah di tekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonyomus Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = "Tombol sudah di tekan";
                });
              },
              child: Text('Tekan Saya'),
            )
          ],
        ),
      ),
    );
  }
}
