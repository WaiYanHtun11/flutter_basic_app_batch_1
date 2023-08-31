import 'package:flutter/material.dart';
class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({super.key});

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int currentIndex = 0;
  List<Widget> pages = const [
    Center(child: Text('Page One')),
    Center(child: Text('Page Two')),
    Center(child: Text('Page Three')),
  ];

  List<BottomNavigationBarItem> navBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
  ];



  @override
  Widget build(BuildContext context) {

    final bottomNavBar = BottomNavigationBar(
      unselectedItemColor: Colors.blue,
      selectedItemColor: Colors.orange,
      currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        items: navBarItems,
      onTap: (int index){
        setState(() {
          currentIndex = index;
        });
      },
    );
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
