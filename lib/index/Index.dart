import 'package:flutter/material.dart';
import 'package:flutter_nan/demo/navigation/NavigationPage.dart';
import 'package:flutter_nan/demo/tab/TabPage.dart';

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
    return new Row(
      children: <Widget>[
        new Expanded(
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
                borderRadius:
                    const BorderRadius.all(const Radius.circular(4.0)),
                color: Colors.red),
          ),
        ),
      ],
    );
  }

  /// Tab 切换
  ///
  /// @date 2019/10/23
  /// @since 1.0.0
  /// @version code 1
  /// @author nan
  Widget intentTabPage() {
    return new Row(children: <Widget>[
      new Expanded(
        child: new Container(
          child: new FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                  return new TabPage();
                }));
              },
              child: new Text(
                'Tab 切换',
                style: new TextStyle(color: Colors.white),
              )),
          decoration: new BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
              color: Colors.orange),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('导航')),
        body: new Container(
          child: new Column(
            children: <Widget>[
              intentNavigation(),
              intentTabPage(),
            ],
          ),
        ),
      ),
    );
  }
}
