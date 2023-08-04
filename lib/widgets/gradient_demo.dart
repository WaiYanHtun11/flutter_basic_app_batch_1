import 'package:flutter/material.dart';
class GradientDemo extends StatelessWidget {
  const GradientDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.redAccent,Colors.greenAccent,Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3,0.8,1],
            )
          ),
          child: const Center(child: Text('Linear Gradient')),
        ),
        const Divider(),
        Container(
          height: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              radius: 0.7,
                colors: [Colors.red,Colors.blue]
            )
          ),
          child: const Center(child: Text('Radial Gradient')),
        )
      ],
    );
  }
}
