import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Page'),
      ),
      body: Container(
        child: new GridView.count(
          crossAxisCount: 2,
          children: new List.generate(120, (index){
            return new Center(
              child: Text('Item $index', style: Theme.of(context).textTheme.headline,),
            );
          })
        ),
      ),
    );
  }
}
