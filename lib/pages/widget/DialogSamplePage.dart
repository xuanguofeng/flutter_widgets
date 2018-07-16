import 'dart:async';
import 'package:flutter/material.dart';

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
            title: const Text('弹窗title'),
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
              child: new Text('确认'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<Null> _showSnackBar() async {
    return ScaffoldState().showSnackBar(SnackBar(
      content: Text("xuanguofeng"),
      backgroundColor: Colors.blue,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogSamplePage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('SimpleDialog'),
              onPressed: () {
                _showSimpleDialog();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('AlertDialog'),
              onPressed: () {
                _showAlertDialog();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('timePicker'),
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('DatePicker'),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2010),
                    lastDate: DateTime.now());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('bottomsheet'),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "这是一个bottomSheet",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 14.0),
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
//          Container(
//            margin: EdgeInsets.all(20.0),
//            alignment: Alignment.center,
//            child: RaisedButton(
//              textColor: Colors.white,
//              color: Colors.blue,
//              child: Text('snackBar'),
//              onPressed: () {
//                Scaffold.of(context).showSnackBar(SnackBar(
//                  content: Container(
//                    child: Padding(
//                      padding: const EdgeInsets.all(20.0),
//                      child: Text(
//                        "这是一个bottomSheet",
//                        textAlign: TextAlign.center,
//                        style: TextStyle(
//                            color: Theme.of(context).accentColor,
//                            fontSize: 14.0),
//                      ),
//                    ),
//                  ),
//                  backgroundColor: Colors.blue,
//                  duration: Duration(seconds: 10),
//                  action: SnackBarAction(
//                      label: "sss",
//                      onPressed: () {
//                        print('ss');
//                      }),
//                ).build(context));
//
//
////                ScaffoldState().showSnackBar(.build(context));
//              },
//            ),
//          ),
        ],
      ),
    );
  }
}
