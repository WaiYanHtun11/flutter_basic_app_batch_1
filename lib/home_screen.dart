import 'package:flutter/material.dart';
import 'package:flutter_basic_app/widgets/icon_demo.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildMenuItem(IconData leadingIcon,String title,Widget screen){
      return Card(
        child: ListTile(
          leading: Icon(leadingIcon),
          trailing: const Icon(Icons.chevron_right),
          title: Text(title),
          onTap: (){
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
        title: const Text('Flutter Basic App'),
      ),
      body: ListView(
        children: [
          buildMenuItem(Icons.widgets, 'Widgets', const Placeholder()),
          buildMenuItem(Icons.layers_outlined, 'Layouts', const Placeholder()),
          buildMenuItem(Icons.list, 'Lists', const Placeholder()),
          buildMenuItem(Icons.phone_android, 'Appbar', const Placeholder()),
          buildMenuItem(Icons.navigation_outlined, 'Navigation', const Placeholder()),
          buildMenuItem(Icons.timer, 'Async', const Placeholder()),
          buildMenuItem(Icons.animation, 'Animation', const Placeholder())
        ],
      ),
    );
  }
}
