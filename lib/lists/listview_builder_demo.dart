import 'package:flutter/material.dart';
class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildRow(int index){
      return Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text('$index'),
          ),
          title: Text('Item - $index',style: const TextStyle(fontSize: 20)),
          trailing: const Icon(Icons.chevron_right),
        ),
      );
    }
    return ListView.builder(
        itemCount: 30,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context,index){
          return buildRow(index);
        }
    );
  }
}
