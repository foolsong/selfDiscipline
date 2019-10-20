import 'package:flutter/material.dart';

class ColumnDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("column"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.red[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          // textDirection:,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 30,
              width: 30,
            ),
            Container(
              color: Colors.blue,
              height: 30,
              width: 30,
            ),
            Container(
              color: Colors.yellow,
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
