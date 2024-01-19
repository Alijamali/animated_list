import 'package:flutter/material.dart';

import 'list_item_widget.dart';
import 'model/list_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListItem> items = List.from(listItems);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animated List",
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Text(
            "Animated List",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
          centerTitle: true,
        ),
        body: AnimatedList(
          key: listKey,
          initialItemCount: items.length,
          itemBuilder: (context, index, animation) => ListItemWidget(
            listItem: items[index],
            animation: animation,
            onClicked: () {
              //now, remove item when click on
              removeItem(index);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_rounded),
          onPressed: () {
            //now , add random item into list when click on floating btn
            insertItem();
          },
        ),
      ),
    );
  }

  void insertItem() {
    const indexAdd = 1;
    final itemAdd = (List.of(listItems)..shuffle()).first;
    items.insert(indexAdd, itemAdd);
    listKey.currentState!
        .insertItem(indexAdd, duration: const Duration(milliseconds: 900));
  }

  void removeItem(int index) {
    final removeItemInList = items[index];
    items.removeAt(index);
    listKey.currentState!.removeItem(
        index,
        (context, animation) => ListItemWidget(
              listItem: removeItemInList,
              animation: animation,
              onClicked: () {},
            ),
        duration: const Duration(milliseconds: 600));
  }
}
