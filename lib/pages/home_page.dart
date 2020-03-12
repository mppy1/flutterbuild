import 'package:flutter/material.dart';
import '../service/service_method.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('百姓生活+'),),
      body:new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('Chats APP'),
            onTap: (){
              Navigator.pushNamed(context, 'chatLoading');
            },
          ),
          new ListTile(
            title: new Text('Custom Themes'),
            onTap: (){
              Navigator.pushNamed(context, 'customThemesRoute');
            },
          ),
          new ListTile(
            title: new Text('ListView'),
            onTap: (){
              Navigator.pushNamed(context, 'listviewRoute');
            },
          ),
          new ListTile(
            title: new Text('Horizontal Listview'),
            onTap: (){
              Navigator.pushNamed(context, 'horizontalListviewRoute');
            },
          ),
          new ListTile(
            title: new Text('Long Listview'),
            onTap: (){
              Navigator.pushNamed(context, 'longListviewRoute');
            },
          ),
          new ListTile(
            title: new Text('List Item'),
            onTap: (){
              Navigator.pushNamed(context, 'listItemRoute');
            },
          ),
          new ListTile(
            title: new Text('Grid View'),
            onTap: (){
              Navigator.pushNamed(context, 'gridviewRoute');
            },
          ),
          new ListTile(
            title: new Text('tapRoute'),
            onTap: (){
              Navigator.pushNamed(context, 'tapRoute');
            },
          ),
          new ListTile(
            title: new Text('basicAppbar'),
            onTap: (){
              Navigator.pushNamed(context, 'basicAppbar');
            },
          ),
          new ListTile(
            title: new Text('tabbedAppbar'),
            onTap: (){
              Navigator.pushNamed(context, 'tabbedAppbar');
            },
          ),
          new ListTile(
            title: new Text('appbarBottom'),
            onTap: (){
              Navigator.pushNamed(context, 'appbarBottom');
            },
          ),
          new ListTile(
            title: new Text('drawer'),
            onTap: (){
              Navigator.pushNamed(context, 'drawerPage');
            },
          ),
          new ListTile(
            title: new Text('RaisedButton'),
            onTap: (){
              Navigator.pushNamed(context, 'raisedButton');
            },
          ),
          new ListTile(
            title: new Text('textField'),
            onTap: (){
              Navigator.pushNamed(context, 'textFieldPage');
            },
          ),
          new ListTile(
            title: new Text('imageDemo'),
            onTap: (){
              Navigator.pushNamed(context, 'imageDemo');
            },
          ),
          new ListTile(
            title: new Text('LayoutDemo'),
            onTap: (){
              Navigator.pushNamed(context, 'layoutDemo');
            },
          ),
          new ListTile(
            title: new Text('cardDemo'),
            onTap: (){
              Navigator.pushNamed(context, 'cardDemo');
            },
          ),


        ],
      ),
    );

  }
}
// 首页轮播组件编写
class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  SwiperDiy({Key key,this.swiperDataList}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333.0,
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network("${swiperDataList[index]['image']}",fit:BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}