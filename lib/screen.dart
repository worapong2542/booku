import 'package:booku/myregister.dart';
import 'package:flutter/material.dart';
import 'package:booku/login.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  //show SinginButton and RegisterButton
  Widget showbutton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signin(),
        SizedBox(
          width: 10.0,
        ),
        register(),
      ],
    );
  }

  //SinginButton
  Widget signin() {
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

  //RegisterButton
  Widget register() {
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
        backgroundColor: Colors.grey, //Background set in grey
        body: Padding(
            padding: EdgeInsets.all(0), //set Border
            child: ListView(
              //show list
              children: <Widget>[
                Container(
                    alignment: Alignment.center, //layout
                    padding: EdgeInsets.only(top: 180), //set Border
                    child: Text(
                      'Bookusss',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 80),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 204), //blankbox
                ),
                Container(
                    //showbutton
                    height: 90,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        showbutton(),
                      ],
                    )),
              ],
            )));
  }
}
