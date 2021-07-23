import 'dart:ui';

import 'package:flutter/material.dart';

class FontApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Typografi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Kosong', style: TextStyle(fontSize: 20)),
            Text('Dengan SmalCaps',
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("smcp")])),
            Text('dengan frac caps 1/2',
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable('frac')
                ])),
          ],
        ),
      ),
    );
  }
}
