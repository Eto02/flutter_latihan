import 'package:flutter/material.dart';

class StfApp extends StatefulWidget {
  @override
  _StfAppState createState() => _StfAppState();
}

class _StfAppState extends State<StfApp> {
  int number = 0;
  void hitButton() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 10 + number.toDouble(),
              ),
            ),
            ElevatedButton(
              child: Text("Tambah Bilangan"),
              onPressed: hitButton,
            )
          ],
        ),
      ),
    );
  }
}
