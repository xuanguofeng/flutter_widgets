import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NormalImageSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NormalImageSampleState();
  }
}

class NormalImageSampleState extends State<NormalImageSample> {
  final String imageUrl =
      'https://images.unsplash.com/photo-1518833895278-e789e65b2b93?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5001f04672eb78a3791eefb38469bd97&auto=format&fit=crop&w=800&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Text('网络图片,请等待加载时间。。。'),
              SizedBox(
                height: 10.0,
              ),
              Image.network(
                imageUrl,
                width: 260.0,
                height: 260.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('本地图片'),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                'images/test1.jpeg',
                width: 260.0,
                height: 260.0,
              )
            ],
          ),
        ));
  }
}
