import 'package:flutter/material.dart';
class IconDemo extends StatelessWidget {
  const IconDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.apple,
        size: 120,
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}
