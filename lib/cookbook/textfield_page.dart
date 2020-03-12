import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
 
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
   
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
       body: Center(
         child: TextField(
           controller: _controller,
           onSubmitted: (String value) async {
             await showDialog<void>(context: context,
             builder: (BuildContext context){
               return AlertDialog(
                 title: const Text('Thanks!'),
                 content: Text('You typed "$value".'),
                 actions: <Widget>[
                   FlatButton(
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     child: const Text('OK'),
                   ),
                   FlatButton(
                     onPressed: (){
                      Navigator.pop(context);
                     },
                     child: const Text('CANCEL'),
                   ),
                 ],
               );
             }
             );
           },
         ),
       ),
      ),
    );
  }
}

