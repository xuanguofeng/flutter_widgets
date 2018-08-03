import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GoogleDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GoogleDemoPageState();
  }
}

class GoogleDemoPageState extends State<GoogleDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter官方Demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Using Themes to share colors and font styles'),
              onTap: () {
                Navigator.of(context).pushNamed('/ThemeDemoPage');
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
              title: Text('Displaying SnackBars'),
              onTap: () {
                Navigator.of(context).pushNamed('/SnackBarDemo');
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
              title: Text('Using custom fonts'),
              onTap: () {
                Navigator.of(context).pushNamed('/UseFontDemo');
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
              title: Text('Create a horizontal list'),
              onTap: () {
                Navigator.of(context).pushNamed('/HorizontalListDemo');
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
              title: Text('Creating lists with different types of items'),
              onTap: () {
                Navigator.of(context).pushNamed('/TypeListDemo');
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
              title: Text('Implement Swipe to Dismiss'),
              onTap: () {
                Navigator.of(context).pushNamed('/DismissItemDemo');
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
