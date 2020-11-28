import 'package:qr_bar_code_flutter/home.dart';
import 'package:qr_bar_code_flutter/mainpage.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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

  // ignore: non_constant_identifier_names
  Widget Callbook() {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 142,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            child: Wrap(
              children: <Widget>[
                Image.asset(
                  "images/book.jpg",
                  width: 120,
                  height: 120,
                ),
                FlatButton(
                  padding: EdgeInsets.all(50.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  textColor: Colors.black,
                  child: Text(
                    'booku',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //1
            backbotton(),
            SizedBox(height: 20),
            Text(
              "   Wishlist",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            Callbook(),
            Callbook(),
            Callbook(),
            Callbook(),
          ],
        ),
      ),
    );
  }
}
