import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _IndexState();
  }
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '导航',
      home: new Scaffold(
        body: new Center(
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  child:
                      new FlatButton(onPressed: () {}, child: new Text('导航栏')),
                  decoration: new BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(4.0)),
                      color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
