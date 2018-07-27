import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ContainerPageState();
  }
}

class ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body:  Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        color: AppColors.colorPrimary,
        width: 500.0,
        height: 48.0,
        child: Text("这是一个container 容器"),
      ),
    );
  }
}
