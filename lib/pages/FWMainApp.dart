import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';
import 'package:flutter_widgets/constant/strings.dart';
import 'package:flutter_widgets/pages/widget/BtnSamplePage.dart';
import 'package:flutter_widgets/pages/widget/DialogSamplePage.dart';
import 'package:flutter_widgets/pages/widget/TextSamplePage.dart';
import 'package:flutter_widgets/pages/widget/LayoutSamplePage.dart';
import 'package:flutter_widgets/pages/widget/layout/ContainerPage.dart';
import 'package:flutter_widgets/pages/widget/layout/CenterPage.dart';
import 'package:flutter_widgets/pages/widget/layout/PaddingPage.dart';
import 'package:flutter_widgets/pages/widget/TabBarSamplePage.dart';
import 'package:flutter_widgets/pages/widget/tabbar/TabBarPage.dart';
import 'package:flutter_widgets/pages/widget/layout/AlignLayoutPage.dart';
import 'package:flutter_widgets/pages/widget/layout/RowPage.dart';
import 'package:flutter_widgets/pages/widget/layout/ColumnPage.dart';
import 'package:flutter_widgets/pages/widget/layout/StackPage.dart';
import 'package:flutter_widgets/pages/widget/ListSamplePage.dart';
import 'package:flutter_widgets/pages/widget/tabbar/BottomNavigationBarPage.dart';
import 'package:flutter_widgets/pages/widget/tabbar/CupertinoTabBarPage.dart';
import 'package:flutter_widgets/pages/widget/tabbar/CupertinoNavigationBarPage.dart';

class FWMainApp extends StatefulWidget {
  @override
  _FWMainAppState createState() => new _FWMainAppState();
}

class _FWMainAppState extends State<FWMainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue, accentColor: Colors.white),
      home: _Home(),
      routes: <String, WidgetBuilder>{
        '/BtnSamplePage': (BuildContext context) => BtnSamplePage(),
        '/TextSamplePage': (BuildContext context) => TextSamplePage(),
        '/DialogSamplePage': (BuildContext context) => DialogSamplePage(),
        '/LayoutSamplePage': (BuildContext context) => LayoutSamplePage(),
        '/ContainerPage': (BuildContext context) => ContainerPage(),
        '/CenterPage': (BuildContext context) => CenterPage(),
        '/PaddingPage': (BuildContext context) => PaddingPage(),
        '/TabBarSamplePage': (BuildContext context) => TabBarSamplePage(),
        '/TabBarPage': (BuildContext context) => TabBarPage(),
        '/AlignLayoutPage': (BuildContext context) => AlignLayoutPage(),
        '/RowPage': (BuildContext context) => RowPage(),
        '/ColumnPage': (BuildContext context) => ColumnPage(),
        '/StackPage': (BuildContext context) => StackPage(),
        '/ListSamplePage': (BuildContext context) => ListSamplePage(),
        '/BottomNavigationBarPage': (BuildContext context) => BottomNavigationBarPage(),
        '/CupertinoTabBarPage': (BuildContext context) => CupertinoTabBarPage(),
        '/CupertinoNavigationBarPage': (BuildContext context) => CupertinoNavigationBarPage(),
      },
    );
  }
}

// ignore: must_be_immutable
class _Home extends StatelessWidget {
  var _body;
  List<GestureDetector> _columns = List();

  void initColumns(BuildContext context) {
    for (var i = 0; i < AppStrings.gridTitle.length; i++) {
      createColumn(i, context);
    }
  }

  void createColumn(int i, BuildContext context) {
    var mColumn = GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            AppStrings.gridTitleImages[i],
            width: 50.0,
            height: 50.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              AppStrings.gridTitle[i],
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                  color: Colors.grey[500]),
            ),
          )
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed(AppStrings.gridPagesName[i]);
      },
    );
    _columns.add(mColumn);
  }

  void initBody() {
    _body = new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverGrid.count(
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            children: <Widget>[
              _columns[0],
              _columns[1],
              _columns[2],
              _columns[3],
              _columns[4],
              _columns[5],
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    initColumns(context);
    initBody();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appBarTitle),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.build),
            onPressed: () async {},
            tooltip: 'tool',
          )
        ],
      ),
      body: _body,
    );
  }
}
