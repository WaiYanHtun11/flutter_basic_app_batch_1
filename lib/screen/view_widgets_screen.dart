import 'package:flutter/material.dart';
import 'package:flutter_basic_app/preview.dart';
import 'package:flutter_basic_app/widgets/icon_demo.dart';
import 'package:flutter_basic_app/widgets/text_field_demo.dart';
import 'package:flutter_basic_app/widgets/text_form_field_demo.dart';
import '../widgets/text_demo.dart';
class ViewWidgetsScreen extends StatelessWidget {
  const ViewWidgetsScreen({super.key});

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

    Widget getPreview(ui,path,title){
      return Preview(ui: ui, path: path, title: title);
    }
    String folder = 'lib/widgets';

    List<Widget> screens = [
      getPreview(const IconDemo(), '$folder/icon_demo.dart','Icon Demo'),
      getPreview(const TextDemo(), '$folder/text_demo.dart','Text Demo'),
      getPreview(const TextFieldDemo(), '$folder/text_field_demo.dart', 'TextField Demo'),
      getPreview(const TextFormFieldDemo(), '$folder/text_form_field_demo.dart','TextFormField Demo')

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: ListView(
        children: [
          buildMenuItem(1,'Icon', screens[0]),
          buildMenuItem(2, 'Text',screens[1]),
          buildMenuItem(3, 'TextField', screens[2]),
          buildMenuItem(4, 'TextFormField', screens[3]),
          buildMenuItem(5, 'Image', const Placeholder()),
          buildMenuItem(6, 'Card,Inkwell', const Placeholder()),
          buildMenuItem(7, 'Gradient', const Placeholder()),
          buildMenuItem(8, 'Buttons', const Placeholder()),
          buildMenuItem(9, 'Dropdown & Menu Button', const Placeholder()),
          buildMenuItem(10, 'Other stateful widgets', const Placeholder())
        ],
      ),
    );
  }
}
