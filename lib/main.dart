// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterbuild/cookbook/card_demo.dart';
import 'package:flutterbuild/cookbook/image_demo.dart';
import 'package:flutterbuild/cookbook/layout_demo.dart';
import 'package:flutterbuild/cookbook/raisedbutton_page.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:flutterbuild/model/counter_model.dart';

import 'package:flutterbuild/pages/index_page.dart';
import 'package:provider/provider.dart';

import 'cookbook/custom_themes.dart';
import 'cookbook/listview.dart';
import 'cookbook/long_listview.dart';
import 'cookbook/gridview.dart';
import 'cookbook/list_item.dart';
import 'cookbook/horizontal_listview.dart';
import 'cookbook/taps.dart';
import 'cookbook/basic_bar.dart';
import 'cookbook/tabbed_appbar.dart';
import 'cookbook/appbar_bottom.dart';
import 'cookbook/drawer.dart';
import 'cookbook/textfield_page.dart';
import 'search.dart';
import 'loading.dart';
import 'app.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Flutter 测试',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor:Colors.pink
        ),
        home: IndexPage(),
        routes: {
          'customThemesRoute': (BuildContext context) => new MyHomePage(title: 'Custom Themes',),
          'listviewRoute': (BuildContext context) => new ListViewPage(),
          'horizontalListviewRoute': (BuildContext context) => new HorizontalListViewPage(),
          'longListviewRoute': (BuildContext context) => new LongListViewPage(),
          'listItemRoute': (BuildContext context) => new ListItemPage(),
          'gridviewRoute': (BuildContext context) => new GridviewPage(),
          'tapRoute': (BuildContext context) => new TapPage(),
          'basicAppbar': (BuildContext context) => new BasicAppbar(),
          'tabbedAppbar': (BuildContext context) => new TabbedAppbar(),
          'appbarBottom': (BuildContext context) => new AppBarBottomSample(),
          'drawerPage': (BuildContext context) => new DrawerPage(),
          'raisedButton': (BuildContext context) => new RaisedButtonPage(),
          'textFieldPage': (BuildContext context) => new TextFieldPage(),
          'imageDemo': (BuildContext context) => new ImageDemo(),
          'layoutDemo': (BuildContext context) => new LayoutDemo(),
          'cardDemo': (BuildContext context) => new CardDemo(),
          'chats': (BuildContext context) => new CardDemo(),
          'search':(BuildContext context) => new Search(),
          'chatLoading':(BuildContext context) => new LoadingPage(),
          'chatApp':(BuildContext context)=> new App(),

          '/friends':(_)=>new WebviewScaffold(url: 'https://www.baidu.com/',
            appBar: AppBar(title: Text('Flutter官网'),),
            withZoom: true,
            withLocalStorage: true,
          ),
        },
      ),
    );
  }
}


void main() {
  final counter = CounterModel();
  final textSize = 48;
  runApp(
    Provider<int>.value(
      value: textSize,
      child: ChangeNotifierProvider.value(
        value: counter,
        child: MyApp(),
      ),
    ),
  );

}
