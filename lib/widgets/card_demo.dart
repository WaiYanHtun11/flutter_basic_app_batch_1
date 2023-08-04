import 'package:flutter/material.dart';
class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Card(
          color: Colors.deepOrange,
          child: SizedBox(
            height: 150,
            child: Center(child: Text('Card')),
          ),
        ),
        Card(
          color: Colors.green,
          child: SizedBox(
            height: 200,
            child: InkWell(
              splashColor: Colors.yellow,
              onTap: (){},
              child: const Center(child: Text('Card with Inkwell effect')),
            ),
          ),
        )
      ],
    );
  }
}
