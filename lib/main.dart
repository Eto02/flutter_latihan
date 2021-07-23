import 'package:flutter/material.dart';
import 'package:latihan/ClipPath.dart';
// import 'package:flutter/services.dart';

void main() => runApp(new MyApp());
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   runApp(new MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClipPathApp(),
    );
  }
}
