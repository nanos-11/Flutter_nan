import 'package:flutter/material.dart';

class Idea2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Idea2State();
  }
}

class _Idea2State extends State<Idea2Page> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('想法2'),
        ),
        body: new ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: const Card(
            child: Align(
              alignment: Alignment.center,
              child: Text('Hello world'),
            ),
          ),
        ),
      ),
    );
  }
}
