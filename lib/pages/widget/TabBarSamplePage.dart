import 'package:flutter/material.dart';

class TabBarSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabBarSamplePageState();
  }
}

class TabBarSamplePageState extends State<TabBarSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('TabBar'),
              onPressed: () {
                Navigator.of(context).pushNamed('/TabBarPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('BottomNavigationBar'),
              onPressed: () {
                Navigator.of(context).pushNamed('/BottomNavigationBarPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('CupertinoTabBar（ios风格底部导航）'),
              onPressed: () {
                Navigator.of(context).pushNamed('/CupertinoTabBarPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('CupertinoNavigationBar（ios风格顶部导航）'),
              onPressed: () {
                Navigator.of(context).pushNamed('/CupertinoNavigationBarPage');
              },
            ),
          ),
        ],
      ),
    );
  }
}
