import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StackPageState();
  }
}

class StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row layout"),
      ),
      body: Stack(
        children: <Widget>[
          Text("第一个"),
          Text('     后面的把前面的覆盖了'),
        ],
      ),
    );
  }
}
