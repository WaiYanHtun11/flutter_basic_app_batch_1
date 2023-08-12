import 'package:flutter/material.dart';
class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  final items = const [
    Icon(Icons.stars,size: 50),
    Icon(Icons.stars,size: 100),
    Icon(Icons.stars,size: 50),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          title: Text('Row'),
        ),
        Card(
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: items,
          ),
        ),
        const ListTile(
          title: Text('Column'),
        ),
        Card(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: items,
          ),
        )
      ],
    );
  }
}
