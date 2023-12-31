import 'package:flutter/material.dart';
import 'package:flutter_basic_app/screen/view_appbars_screen.dart';
import 'package:flutter_basic_app/screen/view_layouts_screen.dart';
import 'package:flutter_basic_app/screen/view_lists_screen.dart';
import 'package:flutter_basic_app/screen/view_navigations_screen.dart';
import 'package:flutter_basic_app/screen/view_widgets_screen.dart';
class HomeScreen extends StatelessWidget {
  static const route = '/home';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Widget buildMenuItem(IconData leadingIcon,String title,Widget screen){
      return Card(
        child: ListTile(
          leading: Icon(leadingIcon),
          trailing: const Icon(Icons.chevron_right),
          title: Text(title),
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => screen
              )
            );
          },
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basic App'),
      ),
      body: ListView(
        children: [
          buildMenuItem(Icons.widgets, 'Widgets', const ViewWidgetsScreen()),
          buildMenuItem(Icons.layers_outlined, 'Layouts', const ViewLayoutsScreen()),
          buildMenuItem(Icons.list, 'Lists', const ViewListsScreen()),
          buildMenuItem(Icons.phone_android, 'Appbar', const ViewAppbarsScreen()),
          buildMenuItem(Icons.navigation_outlined, 'Navigation', const ViewNavigationsScreen()),
          buildMenuItem(Icons.timer, 'Async', const Placeholder()),
          buildMenuItem(Icons.animation, 'Animation', const Placeholder())
        ],
      ),
    );
  }
}
