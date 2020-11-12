import 'package:flutter/material.dart';

class Libary extends StatefulWidget {
  Libary({Key key}) : super(key: key);

  @override
  _LibaryState createState() => _LibaryState();
}

class _LibaryState extends State<Libary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 200,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          width: 200,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(15, (index) {
                        return Container(
                          child: Card(
                            color: Colors.blue,
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
