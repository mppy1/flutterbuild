import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutDemo'),
      ),
      body: new Center(
        child: new IconButton(
            icon: Icon(Icons.volume_up, size: 48.0,),
            tooltip: '按下操作',
            onPressed:(){
              print('按下操作');
            }),
      ),
    );
  }
}
