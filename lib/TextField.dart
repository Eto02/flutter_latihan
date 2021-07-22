import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  TextEditingController controller = TextEditingController(text: "nilai awal");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Spacer'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                icon: Icon(Icons.adb),
                prefixIcon: Icon(Icons.person),
                // prefixText: "Name:",
                // prefixStyle: TextStyle(color: Colors.blue),
                labelText: "Nama Lengkap",
                hintText: "Nama KTP",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
