import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _IdeaState();
  }
}

class _IdeaState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Center(
        child: new Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.center,
//            alignment: Alignment(0.2, 0.6),
//            alignment: Alignment.topRight,
//            alignment: FractionalOffset(0.2, 0.6),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
