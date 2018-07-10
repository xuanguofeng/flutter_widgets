import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';

class FWMainApp extends StatefulWidget {
  @override
  _FWMainAppState createState() => new _FWMainAppState();
}

class _FWMainAppState extends State<FWMainApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(
          primaryColor: AppColors.colorPrimary, accentColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter控件集合'),
        ),
      ),
    );
  }
}
