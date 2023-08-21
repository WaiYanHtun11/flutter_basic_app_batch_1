import 'package:flutter/material.dart';
class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
        itemBuilder: (context,index){
          return EntryItem(entry: data[index]);
        }
    );
  }
}

class Entry{
  final String title;
  final List<Entry>? children;
  Entry({required this.title ,this.children});
}

List<Entry> data = [
  Entry(
      title: 'Fruits',
      children: [
        Entry(title: 'Apple'),
        Entry(title: 'Orange'),
        Entry(title: 'Pineapple')
      ]
  ),
  Entry(
      title: 'Payment',
      children: [
        Entry(title: 'Cash'),
        Entry(
            title: 'Online Banking',
            children: [
              Entry(title: 'KBZ Pay'),
              Entry(title: 'Wave Pay'),
              Entry(title: 'AYA Pay')
          ]
        )
      ]
  )
];

class EntryItem extends StatelessWidget {
  const EntryItem({super.key,required this.entry});
  final Entry entry;

  Widget buildTile(Entry root){
    if(root.children == null){
      return ListTile(title: Text(root.title));
    }else{
      return ExpansionTile(
          title: Text(root.title),
        children: root.children!.map(buildTile).toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildTile(entry);
  }
}

