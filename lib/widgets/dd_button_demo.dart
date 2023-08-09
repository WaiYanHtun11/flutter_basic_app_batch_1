import 'package:flutter/material.dart';
class DropdownButtonDemo extends StatefulWidget {
  const DropdownButtonDemo({super.key});

  @override
  State<DropdownButtonDemo> createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  static const menuItems = <String>[
    'Apple',
    'Orange',
    'Pineapple',
    'Strawberry'
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
          (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
          )
    ).toList();

  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map(
          (String value) => PopupMenuItem<String>(
           value: value,
           child: Text(value),
      )
  ).toList();

  String? btn1Value = 'Apple';
  String? btn2Value;
  String? btn3Value;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          title: const Text('Dropdown Button with default'),
          trailing: DropdownButton<String>(
            value: btn1Value,
            items: _dropDownMenuItems,
            onChanged: (String? newValue){
              if(newValue != null){
                setState(() {
                  btn1Value = newValue;
                });
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Dropdown Button with hint'),
          trailing: DropdownButton<String>(
            hint: const Text('Choose Fruit'),
            value: btn2Value,
            items: _dropDownMenuItems,
            onChanged: (String? newValue){
              if(newValue != null){
                setState(() {
                  btn2Value = newValue;
                });
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Popup Menu Button :'),
          trailing: PopupMenuButton<String>(
            onSelected: (String? newValue){
              if(newValue != null){
                btn3Value = newValue;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(btn3Value!),
                    duration: const Duration(milliseconds: 800),
                  )
                );
              }
            },
            itemBuilder: (context) => _popUpMenuItems,
          ),
        ),
      ],
    );
  }
}
