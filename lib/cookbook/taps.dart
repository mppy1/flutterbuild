import 'package:flutter/material.dart';

class TapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OnTap'),),
      body: new Center(
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
          new MyButton(),
          new InkWellButton(),
         ],
       ),
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        final snackbar = new SnackBar(content: new Text('On Tap'));
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(8.0),
        ),
        child: new Text('My Button'),
      ),
    );
  }
}

class InkWellButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('InkWell On Tap')));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}

