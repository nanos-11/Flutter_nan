import 'package:flutter/material.dart';
import 'package:flutter_nan/global_config.dart';
import 'package:flutter_nan/demo/tab/page/Follow.dart';
import 'package:flutter_nan/demo/tab/page/Hot.dart';
import 'package:flutter_nan/demo/tab/page/Recommend.dart';

class TabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabPageState();
  }
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text('Tab 导航'),
            bottom: new TabBar(
                labelColor: GlobalConfig.dark == true
                    ? new Color(0xFF63FDD9)
                    : Colors.blue,
                unselectedLabelColor:
                    GlobalConfig.dark == true ? Colors.white : Colors.black,
                tabs: [
                  new Tab(text: '关注'),
                  new Tab(text: '推荐'),
                  new Tab(text: '热榜')
                ]),
          ),
          body: new TabBarView(children: [
            new Follow(),
            new Recommend(),
            new Hot(),
          ]),
        ));
  }
}
