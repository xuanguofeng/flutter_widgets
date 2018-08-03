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
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('通过Image控件加载网络和本地图片'),
              onTap: () {
                Navigator.of(context).pushNamed('/NormalImageSample');
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Divider(
                height: 0.5,
                color: Colors.grey,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('通过Icon控件展示一些系统icon'),
              onTap: () {
                Navigator.of(context).pushNamed('/IconImageSample');
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Divider(
                height: 0.5,
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
