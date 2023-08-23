import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
class BackDropDemo extends StatelessWidget {
  const BackDropDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop Example"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.account_circle)
          )
        ],
      ),
      backLayer: Container(
        color: Colors.teal,
        child: const Center(
          child: Text("Back Layer"),
        ),
      ),
      frontLayer: const Center(
        child: Text("Front Layer"),
      ),
    );
  }
}
