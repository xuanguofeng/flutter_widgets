import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';

class CenterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CenterPageState();
  }
}

class CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Center(
        child: Text("这是一个Center 容器"),
      ),
    );
  }
}
