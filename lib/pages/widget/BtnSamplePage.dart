import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BtnSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BtnSamplePageState();
  }
}

class BtnSamplePageState extends State<BtnSamplePage> {
  // ignore: enum_in_class


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BtnSamplePage"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CupertinoButton(
              child: Text('iOS风格按钮'),
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              onPressed: () {
                print("ios按钮");
              },
            ),
            CupertinoButton(
              child: Text('iOS风格按钮(圆角)'),
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              onPressed: () {
                print("ios按钮");
              },
            ),
            CupertinoButton(
              child: Text('iOS风格按钮(圆角)'),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),
              pressedOpacity: 1.0,
              onPressed: () {
                print("ios按钮");
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('material风格按钮'),
              onPressed: () {
                print('11');
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print('sss');
              },
            ),
            FlatButton(
              child: Text("material风格按钮"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print('sdsd');
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_bike),
              tooltip: 'Increase volume by 10%',
              color: Colors.blue,
              onPressed: () {
                print(' ');
              },
            ), PopupMenuButton<WhyFarther>(
              onSelected: (WhyFarther result) {
                setState(() {

                });
              },
              itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: const Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: const Text('Being a lot smarter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.selfStarter,
                  child: const Text('Being a self-starter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.tradingCharter,
                  child: const Text('Placed in charge of trading charter'),
                ),
              ],
            )
          ],
        ));
  }
}

enum WhyFarther {
  harder,
  smarter,
  selfStarter,
  tradingCharter
}
