import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBaar = TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          top: BorderSide(color: Colors.green),
        ),
      ),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.comment), text: "Comment"),
        Tab(icon: Icon(Icons.computer), text: "Computer"),
      ],
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TabBar'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBaar.preferredSize.height),
            child: Container(
              child: myTabBaar,
              color: Colors.amber,
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
          ],
        ),
      ),
    );
  }
}
