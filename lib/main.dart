import 'package:booku/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //run app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black, //set theme
      ),
      home: Screen(), //run screen page
    );
  }
}
