import 'package:booku/mainpage.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  Widget backbotton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        IconButton(
          padding: new EdgeInsets.all(0),
          icon: Icon(Icons.arrow_back_ios, size: 30.0), //insert icon
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Mainpage()), //BacktoScreen
            );
          },
        ),
        Text(
          'Back',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(00),
      child: new Text('language'),
    ));
  }
}
