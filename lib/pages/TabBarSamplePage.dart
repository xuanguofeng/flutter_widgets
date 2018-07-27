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
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('顶部Tab'),
            onTap: () {
              Navigator.of(context).pushNamed('/TabBarPage');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('底部导航菜单'),
            onTap: () {
              Navigator.of(context).pushNamed('/BottomNavigationBarPage');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('iOS风格底部导航菜单'),
            onTap: () {
              Navigator.of(context).pushNamed('/CupertinoTabBarPage');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              height: 0.5,
              color: Colors.grey,
            ),
          ),


          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('iOS风格标题'),
            onTap: () {
              Navigator.of(context).pushNamed('/CupertinoNavigationBarPage');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              height: 0.5,
              color: Colors.grey,
            ),
          ),

        ],
      ),
    );
  }
}
