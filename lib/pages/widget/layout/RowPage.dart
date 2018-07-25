import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RowPagePageState();
  }
}

class RowPagePageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row layout"),
      ),
      body: Row(
        children: <Widget>[
          Text("第一个"),
          Text('第二个'),
          CupertinoButton(
            child: Text('第三个是个按钮'),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
            pressedOpacity: 1.0,
            onPressed: () {
              print("按钮");
            },
          ),
        ],
      ),
    );
  }
}
