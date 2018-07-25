import 'package:flutter/material.dart';

class AlignLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AlignLayoutPageState();
  }
}

class AlignLayoutPageState extends State<AlignLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align layout"),
      ),
      body: Align(
        alignment: Alignment.topRight,
        child: Text(
          "这是一个 Align 容器,设置位置在顶部靠右",
          style: TextStyle(
            color: Colors.red,
            fontSize: 19.0,
          ),
        ),
      ),
    );
  }
}
