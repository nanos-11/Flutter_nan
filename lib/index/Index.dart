import 'package:flutter/material.dart';
import 'package:flutter_nan/demo/navigation/NavigationPage.dart';
import 'package:flutter_nan/demo/tab/TabPage.dart';
import 'package:flutter_nan/global_config.dart';
import 'package:flutter_nan/demo/navigation/page/IdeaPage.dart';
import 'package:flutter_nan/demo/navigation/page/Idea1Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea2Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea3Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea4Page.dart';
import 'package:flutter_nan/demo/tab/page/Follow.dart';
import 'package:flutter_nan/demo/tab/page/Hot.dart';
import 'package:flutter_nan/demo/tab/page/Recommend.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _IndexState();
  }
}

class _IndexState extends State<Index> {
  /// Align 对齐类
  /// AspectRatio 纵横比；屏幕高宽比
  /// ConstrainedBox 在其子项上施加其他约束的窗口小部件。
  ///
  /// @date 2019/10/23
  /// @since 1.0.0
  /// @version code 1
  /// @author nan
  Widget intentAlign() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
            child: new FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return new IdeaPage();
                  }));
                },
                child: new Text(
                  'Align',
                  style: new TextStyle(color: GlobalConfig.white),
                )),
            decoration: new BoxDecoration(
                borderRadius:
                    const BorderRadius.all(const Radius.circular(4.0)),
                color: GlobalConfig.cardBackgroundColor),
          ),
        ),
        new Expanded(
            child: new FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return new Idea1Page();
                  }));
                },
                child: new Text('AspectRatio'))),
        new Expanded(
          child: new Container(
            child: new FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return new Idea2Page();
                }));
              },
              child: new Text(
                'ConstrainedBox',
                style: new TextStyle(fontSize: 13.0),
              ),
            ),
            decoration: new BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                color: Colors.orange),
          ),
        ),
      ],
    );
  }

  /// GridView网格布局
  ///
  /// @date 2019/10/23
  /// @since 1.0.0
  /// @version code 1
  /// @author nan
  Widget intentGridView() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return new Idea3Page();
                }));
              },
              child: new Text('GridView'),
            ),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                color: Colors.blue),
          ),
        ),
        new Expanded(
          child: new Container(
            child: FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return new Idea4Page();
                  }));
                },
                child: new Text('ListView')),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                color: Colors.limeAccent),
          ),
        ),
        new Expanded(
          child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return new Follow();
                }));
              },
              child: new Text('Wrap')),
        )
      ],
    );
  }

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
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
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
              intentAlign(),
              intentGridView(),
              intentNavigation(),
              intentTabPage(),
            ],
          ),
        ),
      ),
    );
  }
}
