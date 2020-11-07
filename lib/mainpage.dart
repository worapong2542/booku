import 'package:booku/test.dart';
import 'package:flutter/material.dart';
import 'package:booku/settingbar.dart';
import 'package:booku/home.dart';
import 'package:booku/search.dart';
import 'package:booku/store.dart';
import 'package:booku/libary.dart';

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
    Home(),
    Store(),
    Testop(),
    Search(),
    Libary(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(title)),
      appBar: AppBar(
        backgroundColor: Colors.black,
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
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            label: "Libary",
          ),
        ],
      ),
      body: page[_selectpage],
    );
  }
}
