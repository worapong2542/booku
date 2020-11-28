import 'package:qr_bar_code_flutter/login.dart';
import 'package:qr_bar_code_flutter/screen.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  //set Variable get data
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    )),
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
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
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
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: confirmpasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
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
                      child: Text('Register'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    )),
              ],
            )));
  }
}
