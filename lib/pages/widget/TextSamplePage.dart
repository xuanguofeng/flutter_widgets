import 'package:flutter/material.dart';

class TextSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TextSamplePageState();
  }
}

class TextSamplePageState extends State<TextSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextSamplePage"),
      ),
      body:
          Column(
              mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Text(
            "hello,this is text",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: new TextStyle(fontSize: 16.0, color: Colors.blue),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              text: 'hello,this is RichText。',
              style: TextStyle(fontSize: 16.0, color: Colors.red),
              children: <TextSpan>[
                TextSpan(
                    text: 'bold',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
