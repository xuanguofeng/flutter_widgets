import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CupertinoNavigationBarPageState();
  }
}

class CupertinoNavigationBarPageState
    extends State<CupertinoNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Increase volume by 10%',
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        border: Border.all(color: Colors.black),
        backgroundColor: Colors.blue,
        middle: Text('这是ios导航',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
