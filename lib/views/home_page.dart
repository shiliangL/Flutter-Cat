import 'package:flutter/material.dart';
import 'package:flutter_cat/util/app_title.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'my App',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new HomePage(title:AppTitle.PAGE_TITLE),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key:key);
  final String title;
  @override
  _HomePageState createState()=> new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    final List<Text> tabTexts = <Text>[
        new Text(
          AppTitle.TAB_TOP_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_SH_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_GN_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_GJ_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_YL_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_TY_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_JS_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_KJ_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_CJ_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      ),
      new Text(
          AppTitle.TAB_SS_CN,
          style: new TextStyle(
              fontSize: 20.0
          )
      )
    ];
    final List<Tab> tabs = [];

    for (var i = 0; i < tabTexts.length; i++) {
      tabs.add( new Tab(child: tabTexts[i]) );
    }
    return new DefaultTabController(
      length: tabs.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(
              widget.title
            ),
          bottom: new TabBar(
            isScrollable: true,
            tabs: tabs,
          ),
        ),
        body: new TabBarView(
          children:tabTexts.map((Text tab){
            return new Center(
              child: new  Text(tab.data)
            );
          }).toList()
        ),
      ),
    );

  }
}