import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  Noti({Key key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(00),
      child: new Text('setting'),
    ));
  }
}
