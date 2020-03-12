import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
   
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      print('flutter 即时通讯APP界面实现');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('images/circle.png', fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
