import 'package:booku/screen.dart';
import 'package:booku/test.dart';
import 'package:flutter/material.dart';
import 'package:booku/settingbar.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectpage = 0;
  void onTapped(int index) {
    setState(() {
      _selectpage = index;
    });
  }

  final List<Widget> page = [
    Testop(),
    Testop(),
    Testop(),
    Testop(),
    Testop(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(title)),
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      drawer: SettingBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _selectpage,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Messages"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
      body: page[_selectpage],
    );
  }
}
