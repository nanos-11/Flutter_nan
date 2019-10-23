import 'package:flutter/material.dart';

class Idea1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Idea1State();
  }
}

class _Idea1State extends State<Idea1Page> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('想法1'),
          ),
          body: new Container(
            child: new AspectRatio(
              aspectRatio: 3 / 1,
              child: new Container(
                color: Colors.black12,
                margin: const EdgeInsets.all(15.0),
              ),
            ),
          )),
    );
  }
}
