import 'package:flutter/material.dart';
import 'package:flutter_basic_app/lists/datatable_demo.dart';
import 'package:flutter_basic_app/lists/expansion_tile_demo.dart';
import 'package:flutter_basic_app/lists/gridview_demo.dart';
import 'package:flutter_basic_app/lists/list_wheel_scrollview_demo.dart';
import 'package:flutter_basic_app/lists/listtile_demo.dart';
import 'package:flutter_basic_app/lists/listview_builder_demo.dart';
import 'package:flutter_basic_app/lists/reorderable_list_demo.dart';
import 'package:flutter_basic_app/lists/slidable_listtile_demo.dart';
import 'package:flutter_basic_app/lists/swipe_demo.dart';

import '../preview.dart';
class ViewListsScreen extends StatelessWidget {
  const ViewListsScreen({super.key});

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

    String folder = 'lib/lists';

    List<Widget> screens = [
      getPreview(const ListTileDemo(), '$folder/listtile_demo.dart', 'ListTile Demo'),
      getPreview(const ListViewBuilderDemo(), '$folder/listview_builder_demo.dart', 'ListView Builder Demo'),
      getPreview(const GridViewDemo(), '$folder/gridview_demo.dart', 'GridView Demo'),
      getPreview(const ExpansionTileDemo(),'$folder/expansion_tile_demo.dart','Expansion Tile Demo'),
      getPreview(const SwipeDemo(), '$folder/swipe_demo.dart', 'Swipe Demo'),
      getPreview(const ReorderableListDemo(), '$folder/reorderable_list_demo.dart', 'Reorderable List'),
      getPreview(const ListWheelScrollViewDemo(), '$folder/list_wheel_scrollview_demo.dart', 'ListWheel Scroll View'),
      getPreview(const SlidableListTileDemo(), '$folder/slidable_listtile_demo.dart', 'Slidable ListTile'),
      getPreview(const DataTableDemo(), '$folder/data_table_demo.dart', 'Data Table Demo')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'ListTile',screens[0]),
          buildMenuItem(2, 'ListView.builder',screens[1]),
          buildMenuItem(3,'GridList', screens[2]),
          buildMenuItem(4, 'ExpansionTile', screens[3]),
          buildMenuItem(5, 'Swipe to dismiss', screens[4]),
          buildMenuItem(6, 'Reorderable list', screens[5]),
          buildMenuItem(7, 'List Wheel Scroll View', screens[6]),
          buildMenuItem(8, 'Slidable ListTile', screens[7]),
          buildMenuItem(9, 'DataTable', screens[8])
        ],
      ),
    );
  }
}
