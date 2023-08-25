import 'package:flutter/material.dart';
import 'package:flutter_basic_app/navigation/bottom_navbar_demo.dart';
import 'package:flutter_basic_app/navigation/bottom_sheet_demo.dart';
import 'package:flutter_basic_app/navigation/bottom_tabbar_demo.dart';
import 'package:flutter_basic_app/navigation/dialog_demo.dart';
import 'package:flutter_basic_app/navigation/drag_scroll_sheet_demo.dart';
import 'package:flutter_basic_app/navigation/nav_drawer_demo.dart';
import 'package:flutter_basic_app/navigation/page_selector_demo.dart';
import 'package:flutter_basic_app/navigation/route_demo.dart';
import 'package:flutter_basic_app/navigation/tab_demo.dart';

import '../preview.dart';
class ViewNavigationsScreen extends StatelessWidget {
  const ViewNavigationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildMenuItem(int index,String title,Widget screen) {
      return Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text("$index"),
          ),
          trailing: const Icon(Icons.chevron_right),
          title: Text(title),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => screen
                )
            );
          },
        ),
      );
    }

    Widget getPreview(ui,path,title){
      return Preview(ui: ui, path: path, title: title);
    }

    String folder = 'lib/navigations';

    List<Widget> screens = [
      getPreview(TabDemo(),'$folder/tab_demo.dart', 'Tab Demo'),
      getPreview(const DialogDemo(),'$folder/dialog_demo.dart', 'Dialog Demo'),
      getPreview(const RouteDemo(),'$folder/route_demo.dart', 'Route Demo'),
      getPreview(const NavDrawerDemo(), '$folder/nav_drawer.dart','Nav Drawer'),
      getPreview(const BottomSheetDemo(),'$folder/bottom_sheet_demo.dart', 'Bottom Sheet Demo'),
      getPreview(const BottomTabBarDemo(),'$folder/bottom_tabbar_demo.dart', 'Bottom Tab Bar Demo'),
      getPreview(const BottomNavBarDemo(),'$folder/bottom_navbar_demo.dart','Bottom Nav Bar'),
      getPreview(const PageSelectorDemo(), '$folder/page_selector_demo.dart', 'Page Selector Demo'),
      getPreview(const DraggableScrollableSheetDemo(),
          '$folder/drag_scroll_sheet_demo.dart',
          'Draggable Scrollable Sheet'
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigations'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1, 'Tabs', screens[0]),
          buildMenuItem(2, 'Dialogs', screens[1]),
          buildMenuItem(3, 'Routes', screens[2]),
          buildMenuItem(4, 'Navigation Drawer', screens[3]),
          buildMenuItem(5, 'Bottom Sheet', screens[4]),
          buildMenuItem(6, 'Bottom Tab Bar', screens[5]),
          buildMenuItem(7, 'Bottom Navigation Bar', screens[6]),
          buildMenuItem(8, 'Page Selector', screens[7]),
          buildMenuItem(9, 'Drag & Scrollable Sheet', screens[8])
        ],
      ),
    );
  }
}
