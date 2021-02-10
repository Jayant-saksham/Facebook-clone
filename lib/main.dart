import 'package:flutter/material.dart';
import 'Screens/Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "facebook",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
