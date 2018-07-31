import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DialogSamplePageState();
  }
}

enum Department { treasury, state }

class DialogSamplePageState extends State<DialogSamplePage> {
  Future<Null> _showSimpleDialog() async {
    switch (await showDialog<Department>(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: const Text('Title'),
            children: <Widget>[
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.treasury);
                },
                child: const Text('item one'),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('item two'),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('item three'),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('item four'),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('item five'),
              )
            ],
          );
        })) {
      case Department.treasury:
        print('Department.treasury');
        break;
      case Department.state:
        print('Department.state');
        break;
    }
  }

  Future<Null> _showAlertDialog() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('AlertDialog'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('alertDialog内容'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text(
                '确认',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<Null> _cupertinoAlertDialog() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text('标题'),
            content: Text("这是一个ios风格的弹窗！"),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('确认'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  Future<Null> _cupertinonPicker() async {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300.0,
            alignment: Alignment.bottomCenter,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              itemExtent: 20.0,
              children: <Widget>[
                Text(
                  'item1',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
                Text(
                  'item2',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
                Text(
                  'item3',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
                Text(
                  'item4',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
                Text(
                  'item5',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
              ],
              onSelectedItemChanged: (int value) {
                print("${value.toString()}");
              },
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('列表类型弹窗'),
            onTap: () {
              _showSimpleDialog();
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
            title: Text('普通消息类型对话框'),
            onTap: () {
              _showAlertDialog();
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
            title: Text('时间类型弹窗'),
            onTap: () {
              showTimePicker(context: context, initialTime: TimeOfDay.now());
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
            title: Text('日期类型弹窗'),
            onTap: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2010),
                  lastDate: DateTime.now());
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
            title: Text('底部信息弹窗'),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "这是一个bottomSheet",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue, fontSize: 14.0),
                        ),
                      ),
                    );
                  });
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
            title: Text('ios风格弹窗'),
            onTap: () {
              _cupertinoAlertDialog();
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
            title: Text('ios类型选择器'),
            onTap: () {
              _cupertinonPicker();
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
            title: Text('ios类型选择器'),
            onTap: () {
              _cupertinonPicker();
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
      ),
    );
  }
}
