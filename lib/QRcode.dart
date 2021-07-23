import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: "1",
          version: 6,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(0),
          size: 200,
        ),
      ),
    );
  }
}
