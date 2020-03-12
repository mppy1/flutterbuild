import 'package:flutter/material.dart';

class BasicAppbar extends StatefulWidget {
  @override
  _BasicAppbarState createState() => _BasicAppbarState();
}

class _BasicAppbarState extends State<BasicAppbar> {
  Choice _selectedChoice = choices[0];

  void _select(Choice Choice){
    setState(() {
      _selectedChoice = Choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Appbar'),
        actions: <Widget>[
          new IconButton(icon: new Icon(choices[0].icon), onPressed: (){
            _select(choices[0]);
          }),
          new IconButton(icon: new Icon(choices[1].icon), onPressed: (){
            _select(choices[1]);
          }),
          new PopupMenuButton<Choice>( // overflow menu
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((Choice choice) {
                return new PopupMenuItem<Choice>(
                  value: choice,
                  child: new Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: new Padding(padding: const EdgeInsets.all(16.0),
        child: new ChoiceCard(choice: _selectedChoice,),
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
