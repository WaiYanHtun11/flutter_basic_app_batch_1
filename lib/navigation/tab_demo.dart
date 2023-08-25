import 'package:flutter/material.dart';
class TabDemo extends StatelessWidget {
  TabDemo({super.key});

  final pages = [
    const Center(child: Icon(Icons.cloud,size: 64,color: Colors.teal)),
    const Center(child: Icon(Icons.alarm,size: 64,color: Colors.orange)),
    const Center(child: Icon(Icons.chat,size: 64,color: Colors.blue)),
  ];

  final tabs = [
    const Tab(icon: Icon(Icons.cloud),text: 'Cloud'),
    const Tab(icon: Icon(Icons.alarm),text: 'Alarm'),
    const Tab(icon: Icon(Icons.chat),text: 'Chat'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        animationDuration: const Duration(milliseconds: 800),
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Demo'),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: pages,
          ),
        )
    );
  }
}
