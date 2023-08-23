import 'package:flutter/material.dart';
class SliverAppBarDemo extends StatelessWidget {
  const SliverAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Flexible Space Title '),
              background: Container(
                color: Colors.orangeAccent,
              ),
            ),
          ),
          const SliverFillRemaining(
            child: Center(child: Text('Hello')),
          )
        ],
      ),
    );
  }
}
