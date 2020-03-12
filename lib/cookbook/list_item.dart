import 'package:flutter/material.dart';

class ListItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = new List<ListItem>.generate(1000,
          (i) => i % 6 == 0
              ? new HeadingItem("HeadingItem $i")
              : new MessageItem('Sender $i', 'Body $i'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('List Item'),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            if(item is HeadingItem){
              return new ListTile(
                 title: Text(item.heading,
                   style: Theme.of(context).textTheme.headline,),
              );
            } else if(item is MessageItem){
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }  else{
              return null;
            }
          }),
    );
  }
}


abstract class ListItem{}

class HeadingItem implements ListItem{
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements ListItem{
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}