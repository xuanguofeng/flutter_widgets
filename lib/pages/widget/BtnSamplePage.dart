import 'package:flutter/material.dart';

class BtnSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BtnSamplePageState();
  }
}

class BtnSamplePageState extends State<BtnSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: Text("BtnSamplePage"),
      ),
      body: Center(
        child: Text("BtnSamplePage"),
      ),
    );
  }
}
