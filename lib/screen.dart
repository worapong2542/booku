import 'package:booku/myregister.dart';
import 'package:flutter/material.dart';
import 'package:booku/login.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget ShowButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SignIn(),
        SizedBox(
          width: 10.0,
        ),
        Register(),
      ],
    );
  }

  Widget SignIn() {
    return RaisedButton(
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
        color: Colors.white,
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        });
  }

  Widget Register() {
    return RaisedButton(
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
        color: Colors.black,
        child: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyRegister()),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 180),
                    child: Text(
                      'Booku',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 80),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 295),
                ),
                Container(
                    height: 90,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ShowButton(),
                      ],
                    )),
              ],
            )));
  }
}
