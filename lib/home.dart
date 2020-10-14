import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Widget Callbook() {
  //   return ();
  // }

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
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "NEW !",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
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
            ),
            SizedBox(height: 10),
            Container(
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
            ),
//22222222222222222222222222
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "HOT !",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
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
            ),
//3333333333333333333333333333333333333333333333
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "RECOMMEND !",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
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
            ),
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
