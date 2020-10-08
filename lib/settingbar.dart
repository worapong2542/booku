import 'package:flutter/material.dart';
import 'screen.dart';

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
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Wish List'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Notification'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen()));
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
