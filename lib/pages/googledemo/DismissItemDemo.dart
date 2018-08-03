import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DismissItemDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DismissItemDemoPageState(
      items: List<String>.generate(20, (i) => "Item ${i + 1}"),
    );
  }
}

class DismissItemDemoPageState extends State<DismissItemDemo> {
  final List<String> items;

  DismissItemDemoPageState({Key key, @required this.items});

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify Widgets.
              key: Key(item),
              // We also need to provide a function that will tell our app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                items.removeAt(index);

                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
              // Show a red background as the item is swiped away
              background: Container(color: Colors.red),
              child: ListTile(title: Text('$item')),
            );
          },
        ),
      ),
    );
  }
}
