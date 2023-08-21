import 'package:flutter/material.dart';
class ExpandedSizedBoxDemo extends StatelessWidget {
  const ExpandedSizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Flex 1'),
            )
        ),
        const SizedBox(height: 36),
        Expanded(
          flex: 2,
            child: Container(
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text('Flex 2'),
            )
        ),
        const SizedBox(height: 36),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Flex 3'),
            )
        ),
      ],
    );
  }
}
