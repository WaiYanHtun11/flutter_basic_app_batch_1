import 'package:flutter/material.dart';
class DraggableScrollableSheetDemo extends StatelessWidget {
  const DraggableScrollableSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag & Scrollable Sheet'),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              color: Colors.blue,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder: (context,scrollController){
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  child: Scrollbar(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 20,
                        itemBuilder: (context,index){
                          return ListTile(title: Text('Item $index'));
                        }
                    ),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}
