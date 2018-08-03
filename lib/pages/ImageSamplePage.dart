import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ImageSamplePageState();
  }
}

class ImageSamplePageState extends State<ImageSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: CupertinoButton(
                child: Text('iOS风格按钮'),
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                onPressed: () {
                  print("ios按钮");
                },
              ),
            ),
          ],
        ));
  }
}
