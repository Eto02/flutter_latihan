import 'package:flutter/material.dart';

class FlexibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexibel Layout'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
