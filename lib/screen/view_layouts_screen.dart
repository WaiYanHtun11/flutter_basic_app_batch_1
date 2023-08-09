import 'package:flutter/material.dart';
import 'package:flutter_basic_app/layouts/container_demo.dart';
import 'package:flutter_basic_app/layouts/row_column_demo.dart';
import 'package:flutter_basic_app/layouts/wrap_demo.dart';

import '../preview.dart';
class ViewLayoutsScreen extends StatelessWidget {
  const ViewLayoutsScreen({super.key});

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
    String folder = 'lib/layouts';
    List<Widget> screens = [
      getPreview(const ContainerDemo(), '$folder/container_demo.dart', 'Container Demo'),
      getPreview(const RowColumnDemo(), '$folder/row_column_demo.dart', 'Row - Column Demo'),
      getPreview(const WrapDemo(), '$folder/wrap_demo.dart', 'Wrap Demo')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'Container',screens[0]),
          buildMenuItem(2, 'Row , Column',screens[1]),
          buildMenuItem(3,'Wrap', screens[2]),
          buildMenuItem(4, 'FractionallySizedBox', const Placeholder()),
          buildMenuItem(5, 'Expanded , SizedBox', const Placeholder()),
          buildMenuItem(6, 'Stack', const Placeholder()),
        ],
      ),
    );

  }
}
