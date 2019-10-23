import 'package:flutter/material.dart';
import 'package:flutter_nan/demo/navigation/NavigationPage.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _IndexState();
  }
}

class _IndexState extends State<Index> {
  /// 导航栏示例
  ///
  /// @date 2019/10/23
  /// @since 1.0.0
  /// @version code 1
  /// @author nan
  Widget intentNavigation() {
    return new Expanded(
      child: new Container(
        child: new FlatButton(
          onPressed: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new NavigationPage();
            }));
          },
          child: new Text(
            '导航栏',
            style: new TextStyle(color: Colors.white),
          ),
        ),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
            color: Colors.red),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '导航',
      home: new Scaffold(
        body: new Center(
          child: new Row(
            children: <Widget>[
              intentNavigation(),
            ],
          ),
        ),
      ),
    );
  }
}
