import 'package:flutter/material.dart';

class LayoutSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LayoutSamplePageState();
  }
}

class LayoutSamplePageState extends State<LayoutSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.description),
            onPressed: () async {},
            tooltip: 'tool',
          )
        ],
        title: Text("Layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('ContainerLayout'),
            onTap: () {
              Navigator.of(context).pushNamed('/ContainerPage');
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
            title: Text('CenterLayout'),
            onTap: () {
              Navigator.of(context).pushNamed('/CenterPage');
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
            title: Text('Paading'),
            onTap: () {
              Navigator.of(context).pushNamed('/PaddingPage');
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
            title: Text('AlignLayout'),
            onTap: () {
              Navigator.of(context).pushNamed('/AlignLayoutPage');
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
            title: Text('Row'),
            onTap: () {
              Navigator.of(context).pushNamed('/RowPage');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              height:0.5,
              color: Colors.grey,
            ),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Column'),
            onTap: () {
              Navigator.of(context).pushNamed('/ColumnPage');
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
            title: Text('Stack'),
            onTap: () {
              Navigator.of(context).pushNamed('/StackPage');
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
