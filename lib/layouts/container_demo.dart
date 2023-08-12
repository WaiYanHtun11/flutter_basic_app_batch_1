import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          height: 150,
          color: Colors.red,
        ),
        const Divider(),
        Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(width: 5,color: Colors.deepOrange),
              color: Colors.green,
            borderRadius: BorderRadius.circular(100)
          ),
        ),
        const SizedBox(height: 100),
        Container(
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          transform: Matrix4.rotationZ(-0.1),
          alignment: Alignment.center,
          child: const Text('Container With Transform'),
        )
      ],
    );
  }
}
