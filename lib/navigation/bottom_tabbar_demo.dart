import 'package:flutter/material.dart';
class BottomTabBarDemo extends StatefulWidget {
  const BottomTabBarDemo({super.key});

  @override
  State<BottomTabBarDemo> createState() => _BottomTabBarDemoState();
}

class _BottomTabBarDemoState extends State<BottomTabBarDemo>
  with SingleTickerProviderStateMixin{

  late TabController tabController;

  List<Widget> pages = const [
    Center(child: Text('Page One')),
    Center(child: Text('Page Two')),
    Center(child: Text('Page Three')),
  ];

  List<Tab> tabs = const[
    Tab(icon: Icon(Icons.home),text: 'Home'),
    Tab(icon: Icon(Icons.account_circle),text: 'Profile'),
    Tab(icon: Icon(Icons.notifications),text: 'Notification')
  ];

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
        length: pages.length,
        vsync: this
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: TabBar(
          tabs: tabs,
          controller: tabController,
        ),
      ),
    );
  }
}
