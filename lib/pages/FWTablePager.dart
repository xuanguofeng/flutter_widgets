import 'package:flutter/material.dart';

class FWTablePager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FWTablePagerState();
  }
}

class FWTablePagerState extends State<FWTablePager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Text("test"),
      ),
    );
  }
}
