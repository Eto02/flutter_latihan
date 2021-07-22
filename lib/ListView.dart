import 'package:flutter/material.dart';

class ListViewApp extends StatefulWidget {
  @override
  _ListViewAppState createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
  List<Widget> widgets = [];
  int counter = 1;
  // _ListViewAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       'Data ke-' + i.toString(),
  //       style: TextStyle(fontSize: 55),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'Data ke-' + counter.toString(),
                        style: TextStyle(fontSize: 55),
                      ));
                      counter++;
                    });
                  },
                  child: Text('Tambah Data')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text('Hapus Data'))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
