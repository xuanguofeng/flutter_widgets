import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';

class PaddingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PaddingPageState();
  }
}

class PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(100.0),
        child: Text("这是一个padding 容器"),
      ),
    );
  }
}
