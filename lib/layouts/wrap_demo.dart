import 'package:flutter/material.dart';
class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          'Apple',
          'Orange',
          'Grape',
          'Strawberry',
          'Banana',
          'Watermelon'
        ]
            .map((String fruit) => Chip(
                avatar: CircleAvatar(child: Text(fruit.substring(0,1))),
                label: Text(fruit),
              ))
            .toList(),
      ),
    );
  }
}
