import 'package:flutter/material.dart';
import 'package:flutter_basic_app/appbar/appbar_demo.dart';
import 'package:flutter_basic_app/appbar/backdrop_demo.dart';
import 'package:flutter_basic_app/appbar/convex_appbar_demo.dart';
import 'package:flutter_basic_app/appbar/fab_demo.dart';
import '../appbar/search_bar_demo.dart';
import '../appbar/sliver_appbar_demo.dart';
import '../preview.dart';
class ViewAppbarsScreen extends StatelessWidget {
  const ViewAppbarsScreen({super.key});

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

    String folder = 'lib/appbar';
    List<Widget> screens = [
      getPreview(const AppBarDemo(), '$folder/appbar_demo.dart','App Bar Demo'),
      getPreview(const FabDemo(), '$folder/fab_demo.dart', 'FAB Demo'),
      getPreview(const SliverAppBarDemo(),'$folder/sliver_appbar_demo.dart','Sliver Appbar Demo'),
      getPreview(const SearchBarDemo(), '$folder/search_bar_demo.dart', 'Search Bar Demo'),
      getPreview(const BackDropDemo(),'$folder/backdrop_demo.dart', 'Backdrop Demo'),
      getPreview(const ConvexAppBarDemo(), '$folder/convex_appbar_demo.dart', 'Convex Appbar Demo')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bars'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'Basic AppBar',screens[0]),
          buildMenuItem(2,'FAB & BottomAppBar',screens[1]),
          buildMenuItem(3,'Sliver AppBar',screens[2]),
          buildMenuItem(4,'Search Bar',screens[3]),
          buildMenuItem(5,'Backdrop',screens[4]),
          buildMenuItem(6,'Convex AppBar',screens[5]),
        ],
      ),
    );
  }
}
