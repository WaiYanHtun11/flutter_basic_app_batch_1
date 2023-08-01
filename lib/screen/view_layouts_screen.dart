import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'Container',const Placeholder()),
          buildMenuItem(2, 'Row , Column',const Placeholder()),
          buildMenuItem(3,'Wrap', const Placeholder()),
          buildMenuItem(4, 'FractionallySizedBox', const Placeholder()),
          buildMenuItem(5, 'Expanded , SizedBox', const Placeholder()),
          buildMenuItem(6, 'Stack', const Placeholder()),
        ],
      ),
    );

  }
}
