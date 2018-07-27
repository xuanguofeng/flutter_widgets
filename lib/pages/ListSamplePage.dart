import 'package:flutter/material.dart';

class ListSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListSamplePageState();
  }
}

class ListSamplePageState extends State<ListSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ListView（官方示例）'),
            onTap: () {
              Navigator.of(context).pushNamed('/AnimatedListSample');
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
            title: Text('ListView（带下拉刷新功能）'),
            onTap: () {
              Navigator.of(context).pushNamed('/RefreshListSample');
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
            title: Text('ListView带折叠功能（官方示例）'),
            onTap: () {
              Navigator.of(context).pushNamed('/ExpansionTileSample');
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
            title: Text('GridViewSample'),
            onTap: () {
              Navigator.of(context).pushNamed('/GridViewSample');
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
