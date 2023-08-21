import 'package:flutter/material.dart';
class SwipeDemo extends StatefulWidget {
  const SwipeDemo({super.key});

  @override
  State<SwipeDemo> createState() => _SwipeDemoState();
}

class _SwipeDemoState extends State<SwipeDemo> {
  final List<String> data = List<String>.generate(5, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
        itemBuilder: (context,index){
          return Dismissible(
              key: Key(data[index]),
              onDismissed: (dir){

                // if(dir == DismissDirection.startToEnd){
                //
                // }else if(dir == DismissDirection.startToEnd){
                //
                // }

                setState(() {
                  data.removeAt(index);
                });
              },
              background: Container(
                color: Colors.deepOrange,
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.thumb_up),
              ),
              child: Card(
                child: ListTile(
                  title: Text(data[index]),
                ),
              ),
          );
        }
    );
  }
}
