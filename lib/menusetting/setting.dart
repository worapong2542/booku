import 'package:booku/menusetting/noti.dart';
import 'package:flutter/material.dart';

import '../mainpage.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        child: ListView(
          children: <Widget>[
            backbotton(),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '  Setting',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 1000,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('User Account'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mainpage()), //gotomainpage
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 1000,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Setting'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Noti()), //gotomainpage
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 1000,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Information'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Setting()), //gotomainpage
                        );
                      },
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Setting()), //GotoForgotpassword
                      );
                    },
                    textColor: Colors.grey,
                    child: Text('about?'),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Setting()), //GotoForgotpassword
                      );
                    },
                    textColor: Colors.grey,
                    child: Text('Help?'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
