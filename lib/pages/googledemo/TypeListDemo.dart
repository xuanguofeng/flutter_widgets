import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// The base class for the different types of items the List can contain
abstract class ListItem {}

// A ListItem that contains data to display a heading
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class TypeListDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TypeListDemoDemoPageState(
      items: List<ListItem>.generate(
        1000,
        (i) => i % 6 == 0
            ? HeadingItem("Heading $i")
            : MessageItem("Sender $i", "Message body $i"),
      ),
    );
  }
}

class TypeListDemoDemoPageState extends State<TypeListDemo> {
  final List<ListItem> items;

  TypeListDemoDemoPageState({Key key, @required this.items});

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          // Let the ListView know how many items it needs to build
          itemCount: items.length,
          // Provide a builder function. This is where the magic happens! We'll
          // convert each item into a Widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = items[index];

            if (item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}
