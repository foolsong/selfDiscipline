import 'package:flutter/material.dart';

class RowDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("row"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.red[200],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text("哈哈哈哈", textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text("呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵", textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: const FlutterLogo(),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}