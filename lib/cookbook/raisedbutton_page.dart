import 'package:flutter/material.dart';

class RaisedButtonPage extends StatelessWidget {
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaiseButton'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const RaisedButton(
              onPressed: null,
              child: Text(
                'Disabled Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30,),
            RaisedButton(
              onPressed: (){},
              child: const Text(
                'Enabled Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30,),
            RaisedButton(
              onPressed: (){},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ]
                    )
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Gradient Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              padding: EdgeInsets.all(10.0),
              splashColor: Colors.blueAccent,
              onPressed: (){

              },
              child: Text(
                'Flat Button',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){

        },
        label: Text('Approve'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),

    );
  }
}
