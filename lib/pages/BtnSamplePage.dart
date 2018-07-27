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
          title: Text("Button"),
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
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: CupertinoButton(
                child: Text('iOS风格按钮(圆角)'),
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                onPressed: () {
                  print("ios按钮");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: CupertinoButton(
                child: Text('iOS风格按钮(圆角)'),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                pressedOpacity: 1.0,
                onPressed: () {
                  print("ios按钮");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('material风格按钮'),
                onPressed: () {
                  print('11');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  print('sss');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Container(
                child: FlatButton(
                  child: Text("material风格按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print('sdsd');
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.directions_bike),
                tooltip: 'Increase volume by 10%',
                color: Colors.blue,
                onPressed: () {
                  print(' ');
                },
              ),
            ),
            Container(
              child: PopupMenuButton<Item>(
                onSelected: (Item result) {
                  setState(() {});
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Item>>[
                      const PopupMenuItem<Item>(
                        value: Item.item1,
                        child: const Text('item 1'),
                      ),
                      const PopupMenuItem<Item>(
                        value: Item.item2,
                        child: const Text('item 2'),
                      ),
                      const PopupMenuItem<Item>(
                        value: Item.item3,
                        child: const Text('item 3'),
                      ),
                      const PopupMenuItem<Item>(
                        value: Item.item4,
                        child: const Text('item 4'),
                      ),
                    ],
              ),
            ),
          ],
        ));
  }
}

enum Item { item1, item2, item3, item4 }
