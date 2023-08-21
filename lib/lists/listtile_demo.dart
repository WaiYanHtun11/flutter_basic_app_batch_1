import 'package:flutter/material.dart';
class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          leading: const Icon(Icons.list),
          trailing: const Icon(Icons.chevron_right),
          title: const Text('List View Demo'),
          subtitle: const Text('Use for rendering fixed number of widget'),
          onTap: (){},
        ),
        const SizedBox(height: 24),
        const SizedBox(
          height: 100,
          child: Card(
            color: Colors.green,
            child: Center(child: Text('This is a card')),
          ),
        ),
        const SizedBox(height: 24),
        Container(
          height: 100,
          alignment: Alignment.center,
          color: Colors.deepOrange,
          child: const Text('This is a container'),
        )
      ],
    );
  }
}
