import 'package:flutter/material.dart';
import 'package:selfdiscipline/widget/container_demo_page.dart';
import 'package:selfdiscipline/widget/row_demo_page.dart';
import 'package:selfdiscipline/widget/column_demo_page.dart';
import 'package:selfdiscipline/widget/scaffold_demo_page.dart';
import 'package:selfdiscipline/widget/scaffold_demo_page02.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    var routeList = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index){
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeList[index]);
              },
              child: new Card(
                child: new Container(
                  alignment:  Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routerName[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ),
    );
  }
}

const routerName = [
  "Container 例子",
  "Row 例子",
  "column 例子",
  "scaffold 例子",
  "scaffold02 例子",
];

Map<String, WidgetBuilder> routers = {
  "widget/controller" : (context){
    return new ContainerDemoPage();
  },
  "widget/row" : (context){
    return new RowDemoPage();
  },
  "widget/column" : (context){
    return new ColumnDemoPage();
  },
  "widget/scaffold01" : (context){
    return new ScaffoldDemoPage01();
  },
  "widget/scaffold02" : (context){
    return new ScaffoldDemoPage02();
  },
  
};