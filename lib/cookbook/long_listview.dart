import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> items = new List<String>.generate(10000, (i) => "Item $i");
    return Scaffold(
      appBar: AppBar(
        title: Text('Long ListView'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          }),
    );
  }
}
