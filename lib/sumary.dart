import 'package:flutter/material.dart';

class Sumary extends StatefulWidget {
  Sumary({Key key}) : super(key: key);

  @override
  _SumaryState createState() => _SumaryState();
}

class _SumaryState extends State<Sumary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          BackButtonWidget(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'จำนวนที่สั่งซื้อ'),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.green,
                    ),
                    onPressed: null),
                Text('1'),
                IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.red,
                    ),
                    onPressed: null),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'ต้องการหนังสือด้วยหรือไม่'),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.check_box_outline_blank), onPressed: null)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('asset/images/header.jpg'))),
      child: Positioned(
          child: ListView(
        children: <Widget>[
          Positioned(
              top: 5.0,
              left: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(Icons.place),
                      color: Colors.white,
                      onPressed: () {})
                ],
              )),
          SizedBox(height: 25.0),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                'Booku',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
          )
        ],
      )),
    );
  }
}
