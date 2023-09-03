import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Venus App",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Shopping List")),
        body: const Column(
          children: [Progress(), ItemList()],
        ));
  }
}

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [Text("Progress"), LinearProgressIndicator(value: 0.0)]);
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Item(key: Key("0"), label: "Potatoes"),
        Item(key: Key("1"), label: "Milk"),
        Item(key: Key("2"), label: "Bread"),
        Item(key: Key("3"), label: "Butter"),
        Item(key: Key("4"), label: "Cheese"),
        Item(key: Key("5"), label: "Apples")
      ],
    );
  }
}

class Item extends StatefulWidget {
  final String label;

  const Item({required Key key, required this.label}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
          value: _value,
          onChanged: (newVal) => setState(() => _value = newVal)),
      Text(widget.label)
    ]);
  }
}
