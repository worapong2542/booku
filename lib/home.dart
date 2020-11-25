import 'package:booku/store.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  Widget Callbook() {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 142,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImageScroll(
            imgpath: "images/book.jpg",
            text: "book",
          ),
          ImageScroll(
            imgpath: "images/book.jpg",
            text: "book",
          ),
          ImageScroll(
            imgpath: "images/book.jpg",
            text: "book",
          ),
          ImageScroll(
            imgpath: "images/book.jpg",
            text: "book",
          ),
          ImageScroll(
            imgpath: "images/book.jpg",
            text: "book",
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Header(name) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16),
          ),
          // Text(
          //   "Lihat Semua",
          //   style: Theme.of(context)
          //       .textTheme
          //       .bodyText1
          //       .copyWith(fontSize: 11, color: Colors.green),
          // )
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
            SizedBox(height: 30),
            FlatButton(
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Store()), //GotoForgotpassword
                );
              },
              textColor: Colors.black,
              child: Text('NEW !'),
            ),
            SizedBox(height: 10),
            Callbook(),
            //2
            SizedBox(height: 30),
            Header("HOT !"),
            SizedBox(height: 10),
            Callbook(),
            //3
            SizedBox(height: 30),
            Header("RECOMMEND !"),
            SizedBox(height: 10),
            Callbook(),
          ],
        ),
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  final String imgpath;
  final text;
  const ImageScroll({
    Key key,
    this.imgpath,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get img and text.show in screen
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        children: <Widget>[
          Container(
            width: 123,
            height: 123,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgpath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: 6),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 11),
          )
        ],
      ),
    );
  }
}
