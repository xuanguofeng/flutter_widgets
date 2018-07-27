import 'dart:async';
import 'package:flutter/material.dart';

class RefreshListSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RefreshListSampleState();
  }
}

class RefreshListSampleState extends State<RefreshListSample> {
  List<String> listData = [];
  var curPage = 0;
  ScrollController _contraller = new ScrollController();

  RefreshListSampleState() {
    _contraller.addListener(() {
      var maxScroll = _contraller.position.maxScrollExtent;
      var pixels = _contraller.position.pixels;

      if (maxScroll == pixels && listData.length < 102) {
        getHomeArticlelist();
        print('加载更更多。。。。。。。');
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHomeArticlelist();
  }

  @override
  Widget build(BuildContext context) {
    Widget listView = ListView.builder(
      itemCount: listData.length + 1,
      itemBuilder: (context, i) => buildItem(i),
      controller: _contraller,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshList'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RefreshIndicator(child: listView, onRefresh: _pullToRefresh),
      ),
    );
  }

  Future<Null> _pullToRefresh() async {
    curPage = 0;
    getHomeArticlelist();
    return null;
  }

  void getHomeArticlelist() {
    List<String> _listData = [];
    for (var i = 0; i < 25; i++) {
      _listData.add('第$curPage页-item');
    }

    setState(() {
      List<String> list1 = new List();
      if (curPage == 0) {
        listData.clear();
      }
      curPage++;

      list1.addAll(listData);
      list1.addAll(_listData);
      if (list1.length >= 102) {
        list1.add('end');
      }
      listData = list1;
    });

    if (listData.length == 102) {
      listData.add('end');
    }
  }

  Widget buildItem(int i) {
    var itemData = listData[i];
    if (itemData is String && itemData == 'end') {
      return Center(child: Text('我是有底线的！'),);
    }

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(itemData),
    );
  }
}
