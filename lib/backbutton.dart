import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  final String text;
  final Navigator navigator;

  BackButton({this.text, this.navigator});

  @override
  Widget build(BuildContext context) => button(text, context, navigator);

  Widget button(String text, BuildContext context, Navigator navigator) => Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            padding: new EdgeInsets.all(0),
            icon: Icon(Icons.arrow_back_ios, size: 30.0), //insert icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => navigator),
              );
            },
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
        ],
      );
}
