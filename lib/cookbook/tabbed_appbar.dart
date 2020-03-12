import 'package:flutter/material.dart';

class TabbedAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
          length: choices.length, 
          child: new Scaffold(
            appBar: new AppBar(
              title: const Text('Tabbed AppBar'),
              bottom: new TabBar(tabs: choices.map((Choice choice){
                return new Tab(
                  text: choice.title,
                  icon: new Icon(choice.icon),
                );
              }).toList(),
              ),
            ),
            body: new TabBarView(children: choices.map((Choice choice){
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: new ChoiceCard(choice: choice,),
              );
            }).toList(),
            ),
          ),
      ),
    );
  }
}


class Choice{
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),

];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key:key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color,),
            new Text(choice.title, style: textStyle,),
          ],
        ),
      ),
    );
  }
}
