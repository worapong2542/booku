import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  Store({Key key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(00),
      child: new Text('store'),
    ));
  }
}
