import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';
import 'package:flutter_widgets/constant/strings.dart';
import 'package:flutter_widgets/pages/widget/BtnSamplePage.dart';
import 'package:flutter_widgets/pages/widget/DialogSamplePage.dart';
import 'package:flutter_widgets/pages/widget/TextSamplePage.dart';
import 'package:flutter_widgets/pages/widget/LayoutSamplePage.dart';

class FWMainApp extends StatefulWidget {
  @override
  _FWMainAppState createState() => new _FWMainAppState();
}

class _FWMainAppState extends State<FWMainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.colorPrimary, accentColor: Colors.blue),
      home: _Home(),
      routes: <String, WidgetBuilder>{
        '/BtnSamplePage': (BuildContext context) => BtnSamplePage(),
        '/TextSamplePage': (BuildContext context) => TextSamplePage(),
        '/DialogSamplePage': (BuildContext context) => DialogSamplePage(),
        '/LayoutSamplePage': (BuildContext context) => LayoutSamplePage(),
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
