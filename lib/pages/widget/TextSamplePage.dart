import 'package:flutter/material.dart';

class TextSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TextSamplePageState();
  }
}

class TextSamplePageState extends State<TextSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextSamplePage"),
      ),
      body: Center(
        child: Text("TextSamplePage"),
      ),
    );
  }
}
