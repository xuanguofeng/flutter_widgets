import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconImageSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IconImageSampleState();
  }
}

class IconImageSampleState extends State<IconImageSample> {
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
              Text('可以使用系统提供的一些icon'),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 50.0),
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.local_airport),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bus),
                    Icon(Icons.lightbulb_outline),
                    Icon(Icons.album),
                    Icon(Icons.print),
                    Icon(Icons.widgets),
                    Icon(Icons.build),
                    Icon(Icons.chevron_right),
                    Icon(Icons.add),
                    Icon(Icons.add_location),
                    Icon(Icons.insert_comment),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
