import 'package:qr_bar_code_flutter/screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //set Variable get data
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  //insert IconBack
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
                      'Forgot Password',
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
                  height: 25, //blankbox
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Send Email'),
                      onPressed: () {
                        //show in console log
                        print(nameController.text);
                        print(emailController.text);
                        print('Sending your Email');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen()), //BacktoScreen
                        );
                      },
                    )),
              ],
            )));
  }
}
