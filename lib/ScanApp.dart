import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanApp extends StatefulWidget {
  @override
  _ScanAppState createState() => _ScanAppState();
}

class _ScanAppState extends State<ScanApp> {
  String text = 'Hasil scan QR';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Scan App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  text = await scanner.scan();
                  setState(() {});
                },
                child: Text('Scan'))
          ],
        ),
      ),
    );
  }
}
