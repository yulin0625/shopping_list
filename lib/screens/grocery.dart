import 'package:flutter/material.dart';
import 'package:shopping_list/widget/grocery_list.dart';

class Grocery extends StatefulWidget {
  const Grocery({super.key});
  @override
  State<StatefulWidget> createState() {
    return _GroceryState();
  }
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const GroceryList(),
    );
  }
}
