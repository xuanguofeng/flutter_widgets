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
        title: Text("LayoutSamplePage"),
      ),
      body: Center(
        child: Text("LayoutSamplePage"),
      ),
    );
  }
}
