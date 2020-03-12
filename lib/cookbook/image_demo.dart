import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageDemo'),
      ),
      body: new Center(
        child: new Image.network('http://www.xinhuanet.com//comments/titlepic/129473020_1486619330222_title1n.jpg',
          fit: BoxFit.fitWidth,),
      ),
    );
  }
}
