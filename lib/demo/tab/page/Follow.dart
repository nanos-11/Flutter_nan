import 'package:flutter/material.dart';

/// 关注
///
/// @date 2019/10/17
/// @since 1.0.0
/// @author nan
class Follow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FollowState();
  }
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('d'),
      ),
      body: new Container(
        child: Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            new Container(
              child: Text('sdfsd'),
              height: 50.0,
              width: 100.0,
              color: Colors.blue,
            ),
            new Container(
              child: Text('sdfsd'),
              height: 50.0,
              width: 100.0,
              color: Colors.blue,
            ),
            new Container(
              child: Text('sdfsd'),
              height: 50.0,
              width: 100.0,
              color: Colors.blue,
            ),
            new Container(
              child: Text('sdfsd'),
              height: 50.0,
              width: 100.0,
              color: Colors.blue,
            ),
            new Container(
              child: Text('sdfsd'),
              height: 50.0,
              width: 100.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
