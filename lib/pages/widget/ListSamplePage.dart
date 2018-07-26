import 'package:flutter/material.dart';

class ListSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListSamplePagePageState();
  }
}

class ListSamplePagePageState extends State<ListSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
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
              child: Text('List'),
              onPressed: () {
                Navigator.of(context).pushNamed('/ListSamplePage');
              },
            ),
          ),
        ],
      ),
    );
  }
}
