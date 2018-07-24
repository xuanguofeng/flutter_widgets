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
        title: Text('TabBarSamplePage'),
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
        ],
      ),
    );
  }
}
