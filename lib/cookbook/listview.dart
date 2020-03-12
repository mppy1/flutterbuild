import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: new Container(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.map),
                title: new Text('Maps'),
              ),
              new ListTile(
                leading: new Icon(Icons.photo_album),
                title: new Text('Album'),
              ),
              new ListTile(
                leading: new Icon(Icons.phone),
                title: new Text('Phone'),
              ),
            ],
          )
      ),
    );
  }
}
