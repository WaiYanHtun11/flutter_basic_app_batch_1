import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'ListTile',const Placeholder()),
          buildMenuItem(2, 'ListView.builder',const Placeholder()),
          buildMenuItem(3,'GridList', const Placeholder()),
          buildMenuItem(4, 'ExpansionTile', const Placeholder()),
          buildMenuItem(5, 'Swipe to dismiss', const Placeholder()),
          buildMenuItem(6, 'Reorderable list', const Placeholder()),
          buildMenuItem(7, 'Slidable ListTile', const Placeholder()),
          buildMenuItem(8, 'DataTable', const Placeholder())
        ],
      ),
    );
  }
}
