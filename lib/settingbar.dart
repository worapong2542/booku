import 'package:booku/libary.dart';
import 'package:booku/menusetting/setting.dart';
import 'package:booku/wishlist.dart';
import 'package:flutter/material.dart';
import 'menusetting/language.dart';
import 'screen.dart';
import 'menusetting/noti.dart';

class SettingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Dove'),
            accountEmail: Text('Dove@mail.com'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(
                size: 42.0,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Libary'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Libary()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Wish List'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Wishlist()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Notification'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Noti()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Language()));
            },
          ),
          ListTile(
            leading: Icon(Icons.remove_circle),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
        ],
      ),
    );
  }
}
