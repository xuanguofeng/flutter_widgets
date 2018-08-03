import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UseFontDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UseFontDemoPageState();
  }
}

class UseFontDemoPageState extends State<UseFontDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: Center(
          child: Text(
            '这是一个改变字体的文本',
            style: TextStyle(fontFamily: 'FZLanTing', fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
