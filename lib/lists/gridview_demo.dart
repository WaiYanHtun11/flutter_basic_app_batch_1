import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});


  @override
  Widget build(BuildContext context) {

    Widget buildUi(index){
      return Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: 3.0)
          ),
          padding: const EdgeInsets.all(16),
          child: Text('Item - $index'),
        ),
      );
    }

    return GridView.count(
      scrollDirection: Axis.horizontal,
        crossAxisCount: 4,
        children: List.generate(100, (index) => buildUi(index)),
    );
  }
}
