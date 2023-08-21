import 'package:flutter/material.dart';
class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({super.key});

  @override
  State<ListWheelScrollViewDemo> createState() => _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
        itemExtent: 75,
        children: List.generate(10, (index) => ListTile(
          leading: Text('$index',style: const TextStyle(fontSize: 50)),
          title: Text('Title $index'),
          subtitle: Text('Subtitle $index'),
        ))
    );
  }
}
