import 'package:qr_bar_code_flutter/Forgot.dart';
import 'package:qr_bar_code_flutter/mainpage.dart';
import 'package:qr_bar_code_flutter/myregister.dart';
import 'package:qr_bar_code_flutter/screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //set Variable get data
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              MaterialPageRoute(builder: (context) => Screen()), //BacktoScreen
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
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                'Booku',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text('Login'),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Mainpage()), //gotomainpage
                  );
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ForgotPassword()), //GotoForgotpassword
                );
              },
              textColor: Colors.grey,
              child: Text('Forgot Password?'),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.grey,
                    child: Text(
                      'Does not have account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyRegister()),
                      );
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
