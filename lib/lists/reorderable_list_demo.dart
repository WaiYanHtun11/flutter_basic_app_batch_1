import 'package:flutter/material.dart';
class ReorderableListDemo extends StatefulWidget {
  const ReorderableListDemo({super.key});

  @override
  State<ReorderableListDemo> createState() => _ReorderableListDemoState();
}

class _ReorderableListDemoState extends State<ReorderableListDemo> {

  final items = ['A','B','C','D','E','F','G']
      .map((item) => ListItem(value: item, checked: false))
      .toList();




  @override
  Widget build(BuildContext context) {
    final listTiles = items
        .map((item) => CheckboxListTile(
          key: Key(item.value),
          value: item.checked,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? newValue){
            setState(() {
              item.checked = newValue!;
            });
          },
          title: Text(item.value),
        ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List'),
      ),
      body: ReorderableListView(
        onReorder: (int oldIndex,int newIndex){ // 2 0
          print('old :: $oldIndex and new :: $newIndex');
          setState(() {
            int newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex; // 0
            ListItem item = items.removeAt(oldIndex); //
            items.insert(newIdx, item);
            // A = 2
          });

        },
        children: listTiles,
      ),
    );
  }
}

class ListItem{
  final String value;
  late bool checked;
  ListItem({required this.value,required this.checked});
}
