import 'package:flutter/material.dart';
import 'package:flutter_basic_app/preview.dart';
import 'package:flutter_basic_app/widgets/gradient_demo.dart';
import 'package:flutter_basic_app/widgets/icon_demo.dart';
import 'package:flutter_basic_app/widgets/text_field_demo.dart';
import 'package:flutter_basic_app/widgets/text_form_field_demo.dart';
import '../widgets/card_demo.dart';
import '../widgets/image_demo.dart';
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
      getPreview(const TextFormFieldDemo(), '$folder/text_form_field_demo.dart','TextFormField Demo'),
      getPreview(const ImageDemo(), '$folder/image_demo.dart', 'Image Demo'),
      getPreview(const CardDemo(), '$folder/card_demo.dart', 'Card Demo'),
      getPreview(const GradientDemo(), '$folder/gradient_demo.dart', 'Gradient Demo'),

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
          buildMenuItem(5, 'Image', screens[4]),
          buildMenuItem(6, 'Card,Inkwell', screens[5]),
          buildMenuItem(7, 'Gradient', screens[6]),
          buildMenuItem(8, 'Buttons', const Placeholder()),
          buildMenuItem(9, 'Dropdown & Menu Button', const Placeholder()),
          buildMenuItem(10, 'Other stateful widgets', const Placeholder())
        ],
      ),
    );
  }
}
