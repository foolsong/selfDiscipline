import 'package:flutter/material.dart';

class ScaffoldDemoPage02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabbed AppBar"),
        // bottom: new TabBar(
        //   isScrollable: true,
        //   tabs: choices.map((Choice choice){
        //     return new Tab(
        //       text: choice.title,
        //       icon: new Icon(choice.icon)
        //     );
        //   }).toList(),
        // ),
      ),
      // body: new TabBarView(
      //   children: choices.map((Choice choice) {
      //     return new Padding(
      //       padding: EdgeInsets.all(16.0),
      //       child: new ChoiceCard(choice: choice),
      //     );
      //   }).toList(),
      // ),
    );
  }  
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  Choice(title: "CAR", icon: Icons.directions_car),
  Choice(title: "bike", icon: Icons.directions_bike),
  Choice(title: "bus", icon: Icons.directions_bus),
  Choice(title: "boat", icon: Icons.directions_boat),
  Choice(title: "railway", icon: Icons.directions_railway),
  Choice(title: "subway", icon: Icons.directions_subway),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            new Icon(
              choice.icon,
              size: 128,
              color: textStyle.color,
            ),
            new Text(
              choice.title,
              style: textStyle
            )
          ],
        ),
      ),
    );
  }
  
}