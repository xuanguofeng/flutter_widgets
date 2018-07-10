import 'package:flutter/material.dart';
import 'package:flutter_widgets/constant/colors.dart';
import 'package:flutter_widgets/constant/strings.dart';

class FWMainApp extends StatefulWidget {
  @override
  _FWMainAppState createState() => new _FWMainAppState();
}

class _FWMainAppState extends State<FWMainApp> {
  var _body;
  List<Column> _columns = List();

  initData() {
    for (var i = 0; i < AppStrings.gridTitle.length; i++) {
      var mColumn = Column(
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
      );
      _columns.add(mColumn);
    }

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
    initData();
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.colorPrimary, accentColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.appBarTitle),
        ),
        body: _body,
      ),
    );
  }
}
