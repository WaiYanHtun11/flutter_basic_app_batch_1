import 'package:flutter/material.dart';
class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {

    void showSnack() => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text('Button Clicked'),
        duration: Duration(milliseconds: 500),
      ),
    );

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(title: Text('Elevated Button')),
        ElevatedButton(
            onPressed: showSnack,
            child: const Text('Click Me')
        ),
        const Divider(),
        const ListTile(title: Text('Outlined Button')),
        OutlinedButton(
            onPressed: showSnack,
            child: const Text('Click Me')
        ),
        const Divider(),
        const ListTile(title: Text('Text Button')),
        TextButton(
            onPressed: showSnack,
            child: const Text('Click Me')
        ),
        const Divider(),
        const ListTile(title: Text('Disabled Elevated Button')),
        const ElevatedButton(
            onPressed: null,
            child:  Text('Cannot Click Me')
        ),
        const Divider(),
        const ListTile(title: Text('Icon Button')),
        Center(
          child: IconButton(
            icon: const Icon(Icons.call),
            onPressed: showSnack,
          ),
        )
      ],
    );
  }
}
