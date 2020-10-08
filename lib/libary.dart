import 'package:flutter/material.dart';

class Libary extends StatefulWidget {
  Libary({Key key}) : super(key: key);

  @override
  _LibaryState createState() => _LibaryState();
}

class _LibaryState extends State<Libary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(00),
      child: new Text('libary'),
    ));
  }
}
