import 'package:flutter/material.dart';
class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.3,
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('30 % of available space'),
            ),
          )
        ),
        Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.7,
              child: Container(
                color: Colors.deepOrange,
                alignment: Alignment.center,
                child: const Text('70 % of available space'),
              ),
            )
        )
      ],
    );
  }
}
