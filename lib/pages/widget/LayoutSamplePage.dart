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
        title: Text("LayoutSample"),
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
              child: Text('ContainerLayout'),
              onPressed: () {
                Navigator.of(context).pushNamed('/ContainerPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('CenterLayout'),
              onPressed: () {
                Navigator.of(context).pushNamed('/CenterPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('PaddingLayout'),
              onPressed: () {
                Navigator.of(context).pushNamed('/PaddingPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('AlignLayout'),
              onPressed: () {
                Navigator.of(context).pushNamed('/AlignLayoutPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Row'),
              onPressed: () {
                Navigator.of(context).pushNamed('/RowPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Column'),
              onPressed: () {
                Navigator.of(context).pushNamed('/ColumnPage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Stack'),
              onPressed: () {
                Navigator.of(context).pushNamed('/StackPage');
              },
            ),
          ),
        ],
      ),
    );
  }
}
