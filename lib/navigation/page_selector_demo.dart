import 'package:flutter/material.dart';
class PageSelectorDemo extends StatelessWidget {
  const PageSelectorDemo({super.key});


  @override
  Widget build(BuildContext context) {
    const List<Widget> icons = [
      Icon(Icons.event),
      Icon(Icons.home),
      Icon(Icons.android),
      Icon(Icons.alarm),
      Icon(Icons.notifications),
    ];

    return DefaultTabController(
        length: icons.length,
        child: Scaffold(
          body: Builder(
            builder: (context){
              return Column(
                children: [
                  const TabPageSelector(),
                  const Expanded(
                      child: TabBarView(children: icons)
                  ),
                  ElevatedButton(
                      onPressed: (){
                        final TabController controller = DefaultTabController.of(context);
                        if(!controller.indexIsChanging){
                          controller.animateTo(icons.length - 1);
                        }
                      },
                      child: const Text('Skip')
                  )
                ],
              );
            },
          ),
        )
    );
  }
}
