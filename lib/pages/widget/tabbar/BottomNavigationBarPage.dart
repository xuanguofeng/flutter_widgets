import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarPageState();
  }
}

class BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar"),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: BottomNavigationBar(
          items: items(),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  items() {
    List<BottomNavigationBarItem> list = [];
    var item1 = BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.train),
        title: Text(
          'train',
        ));
    var item2 = BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.directions_bike),
        title: Text(
          'bike',
        ));
    var item3 = BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.map),
        title: Text(
          'map',
        ));
    var item4 = BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.local_airport),
        title: Text(
          'airport',
        ));

    list.add(item1);
    list.add(item2);
    list.add(item3);
    list.add(item4);
    return list;
  }
}
