import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

import '../model/counter_model.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appName = 'Custom Themes';
    return new MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;


  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: new Column(
            children: <Widget>[
              new Text(
                'Text with a background color',
                style: Theme.of(context).textTheme.title,
              ),
              new Text(
                'Value: {$_counter.value}',
                style: TextStyle(fontSize: textSize),
              ),
              new Image.network(
                'http://attach.bbs.miui.com/forum/201401/11/145825zn1sxa8anrg11gt1.jpg',
              ),
              new Center(child: new CircularProgressIndicator()),
              new FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'http://attach.bbs.miui.com/forum/201111/21/205700txzuacubbcy91u99.jpg'
              ),

            ],
          )

        ),

      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: new FloatingActionButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'click it',
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Colors.grey[400]);
            },
            child: new Icon(Icons.add),
          )),
    );
  }
}