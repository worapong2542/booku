import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //  Padding(
          //   padding: EdgeInsets.all(00),
          //   child: ListView(
          //     children: <Widget>[
          //       Container(child: Text("NEW !")),
          //       Row(),
          //       Container(child: Text("HOT !")),
          //       Row(),
          //     ],
          //   ),
          // ),
          Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //1
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pilihan Terlaris",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 13),
                  ),
                  Text(
                    "Lihat Semua",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 11, color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 142,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ImageScroll(
                    imgpath: "images/MieAyam.jpg",
                    text: "Mie Ayam",
                  ),
                  ImageScroll(
                    imgpath: "images/NasiGoreng.jpg",
                    text: "Nasi Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Kwetiausapi.jpg",
                    text: "Kwetiau Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Bihun.jpg",
                    text: "Bihun Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Pempek.jpg",
                    text: "Pempek Palembang",
                  ),
                ],
              ),
            ),
            //2
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pilihan Terlaris",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 13),
                  ),
                  Text(
                    "Lihat Semua",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 11, color: Colors.green),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 142,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ImageScroll(
                    imgpath: "images/MieAyam.jpg",
                    text: "Mie Ayam",
                  ),
                  ImageScroll(
                    imgpath: "images/NasiGoreng.jpg",
                    text: "Nasi Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Kwetiausapi.jpg",
                    text: "Kwetiau Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Bihun.jpg",
                    text: "Bihun Goreng",
                  ),
                  ImageScroll(
                    imgpath: "images/Pempek.jpg",
                    text: "Pempek Palembang",
                  ),
                ],
              ),
            )
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
