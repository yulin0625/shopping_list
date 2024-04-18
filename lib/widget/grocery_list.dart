import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});
  @override
  State<GroceryList> createState() {
    return _GroceryListState();
  }
}

class _GroceryListState extends State<GroceryList> {
  final groceryItem = groceryItems;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final item in groceryItem)
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              color: item.category.color,
            ),
            title: Text(item.name),
            trailing: Text(item.quantity.toString()),
          ),
      ],
    );
  }
}
