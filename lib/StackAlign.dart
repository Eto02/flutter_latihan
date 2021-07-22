import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Stack dan Align'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.black12,
                      ))
                    ],
                  )),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.black12,
                    )),
                    Flexible(
                        child: Container(
                      color: Colors.white,
                    ))
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Ini adalah text yang ada di lapisan tengah dari stack',
                      style: TextStyle(fontSize: 55),
                    ),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0, 0.80),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('My Button'),
              style: ElevatedButton.styleFrom(primary: Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
