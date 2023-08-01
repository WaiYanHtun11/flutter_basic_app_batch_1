import 'package:flutter/material.dart';
class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          'Flutter Basic',
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          decoration: TextDecoration.lineThrough
        ),
      ),
    );
  }
}
