import 'package:flutter/material.dart';

/// GridView网格布局
/// 最常用的网格布局是GridView.count和GridView.extent，
/// 它们创建一个在横轴上具有固定数量的图块的布局，
/// 而 GridView.extent创建一个具有最大横轴范围的图块的布局。
/// 自定义SliverGridDelegate可以生成子代的任意2D排列，包括未对齐或重叠的排列。
///
/// @date 2019/10/23
/// @since 1.0.0
/// @version code 1
/// @author nan
class Idea3Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Idea3State();
  }
}

class _Idea3State extends State<Idea3Page> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法3'),
        ),
//        body: GridView.count(
//          primary: false,
//          padding: const EdgeInsets.all(20),
//          crossAxisSpacing: 10,
//          mainAxisSpacing: 10,
//          crossAxisCount: 2,
//          children: <Widget>[
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: Align(
//                child: const Text('He\'d have you all unravel at the'),
//              ),
//              color: Colors.teal[100],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: const Text('Heed not the rabble'),
//              color: Colors.teal[200],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: const Text('Sound of screams but the'),
//              color: Colors.teal[300],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: const Text('Who scream'),
//              color: Colors.teal[400],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: const Text('Revolution is coming...'),
//              color: Colors.teal[500],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8),
//              child: const Text('Revolution, they...'),
//              color: Colors.teal[600],
//            ),
//          ],
//        ),
        //本示例说明如何使用CustomScrollView和SliverGrid创建与上一个示例相同的网格。
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('He\'d have you all unravel at the'),
                    color: Colors.green[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.green[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.green[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.green[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution is coming...'),
                    color: Colors.green[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution, they...'),
                    color: Colors.green[600],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
