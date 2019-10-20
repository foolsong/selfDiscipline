import 'package:flutter/material.dart';

class ContainerDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text("container"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber[600],
          padding: const EdgeInsets.all(60),
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
            // height: 200,
            child: Container(
              // transform: Matrix4.rotationZ(0.1),
              // height: 150,
              color: Colors.yellow,
              padding: EdgeInsets.all(10.0),
              child: Text('Hello World',
                style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
