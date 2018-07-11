import 'package:flutter/material.dart';

class DialogSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DialogSamplePageState();
  }
}

class DialogSamplePageState extends State<DialogSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogSamplePage"),
      ),
      body: Center(
        child: Text("DialogSamplePage"),
      ),
    );
  }
}
