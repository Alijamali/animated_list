import 'package:flutter/material.dart';

import 'model/list_model.dart';

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListItemWidget(
      {super.key,
      required this.listItem,
      required this.animation,
      required this.onClicked});

  @override
  Widget build(BuildContext context) {
    //now, add animation for remove item
    //problem, reload icon when remove, for solve it
    //we can change any animation for delete or insert item
    //for example
    // return SizeTransition(
    //   key: ValueKey(listItem.urlImage),
    //   sizeFactor: animation,
    //   child: buildItem(),
    // );
    return SlideTransition(
      key: ValueKey(listItem.urlImage),
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          //by change this curve, animation remove item is change
          curve: Curves.linear,
        ),
      ),
      child: buildItem(),
    );
  }

  Widget buildItem() => Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(listItem.urlImage),
          ),
          title: Text(
            listItem.title,
            style: const TextStyle(fontSize: 22, color: Colors.black),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: onClicked,
          ),
        ),
      );
}
