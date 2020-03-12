import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 250.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text('深圳市南山区深南大道35号', style: new TextStyle(fontWeight: FontWeight.w300),),
              subtitle: new Text('创想科技'),
              leading: new Icon(Icons.home, color: Colors.lightBlue,),
            ),
            new Divider(),
            new ListTile(
              title: new Text('深圳市南山区深南大道35号', style: new TextStyle(fontWeight: FontWeight.w300),),
              subtitle: new Text('一木培训'),
              leading: new Icon(Icons.school, color: Colors.lightBlue,),
            )
          ],
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: Text('Card布局'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}
