import 'package:flutter/material.dart';

class ControllerDemoPage extends StatelessWidget {

final TextEditingController controller = new TextEditingController(text: "init Text");
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: new Text("controller"),
      ),
      body: new Container(
        margin: EdgeInsets.all(10),
        child: new Center(
          child: new TextField(
            controller: controller,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("current Text ${controller.text}");
          controller.text = "Changed By FloatingActionButton";
        },
        child: new Text("C"),
      ),
    );
  }
}