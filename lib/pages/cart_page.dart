import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('购物车'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Map'),
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text('Album'),
          ),
          new ListTile(
            leading: new Icon(Icons.phone),
            title: new Text('Phone'),
          )
        ],
      ),
    );
  }
}