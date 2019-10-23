import 'package:flutter/material.dart';
import 'package:flutter_nan/demo/navigation/NavigationIconView.dart';
import 'package:flutter_nan/demo/navigation/page/IdeaPage.dart';
import 'package:flutter_nan/demo/navigation/page/Idea1Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea2Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea3Page.dart';
import 'package:flutter_nan/demo/navigation/page/Idea4Page.dart';

/// 导航栏
///
/// @date 2019/10/23
/// @since 1.0.0
/// @version code 1
/// @author nan
class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _NavigationPageState();
  }
}

class _NavigationPageState extends State<NavigationPage>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assessment),
        title: new Text('首页'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text('想法'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_shopping_cart),
        title: new Text('市场'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text('通知'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text('我的'),
        vsync: this,
      ),
    ];

    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new IdeaPage(),
      new Idea1Page(),
      new Idea2Page(),
      new Idea3Page(),
      new Idea4Page()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {
      print('nan --_rebuild-->');
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print('nan --build-->' + index.toString());
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: new ThemeData.dark(),
    );
  }
}
