import 'package:flutter/material.dart';
class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Sample Title'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.directions_bike_outlined)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.directions_bus_outlined)
          ),
        ],
      ),
    );
  }
}
