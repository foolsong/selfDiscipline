import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ScrollToIndexDemoPage extends StatefulWidget {
  @override
  _ScrollToIndexDemoPageState createState() => _ScrollToIndexDemoPageState();
}

class _ScrollToIndexDemoPageState extends State<ScrollToIndexDemoPage> {

  static const maxCount = 100;

  AutoScrollController controller;

  final scrollDirection = Axis.vertical;

  final random = math.Random();

  List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
      viewportBoundaryGetter: () =>
        Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection
    );
    randomList = List.generate(maxCount, (index) => <int>[index, (1000 * random.nextDouble().toInt())] );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ScrollToIndexDemoPage"),
      ),
      body: new Container(
        child: ListView(
          scrollDirection: scrollDirection,
          controller: controller,
          children: randomList.map<Widget>((data){
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ,
            );
          }),
        ),
      ),
    );
  }
  
}