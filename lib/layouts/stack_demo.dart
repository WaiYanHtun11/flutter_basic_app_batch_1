import 'package:flutter/material.dart';
class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(width: 300,height: 300,color: Colors.orange),
          Container(width: 200,height: 200,color: Colors.green),
          Container(width: 100,height: 100,color: Colors.deepOrange),
        ],
      ),
    );
  }
}
