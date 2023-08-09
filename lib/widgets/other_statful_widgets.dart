import 'package:flutter/material.dart';
class OtherStatefulWidgets extends StatefulWidget {
  const OtherStatefulWidgets({super.key});

  @override
  State<OtherStatefulWidgets> createState() => _OtherStatefulWidgetsState();
}

class _OtherStatefulWidgetsState extends State<OtherStatefulWidgets> {
  bool switchVal = true;
  bool checkBoxVal = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        ListTile(
          title: const Text('Switch'),
          trailing: Switch(
            value: switchVal,
            onChanged: (bool newValue){
              setState(() {
                switchVal = newValue;
              });
            },
          ),
        ),
        const ListTile(
          title: Text('Disabled Switch'),
          trailing: Switch(
            value: false,
            onChanged: null,
          ),
        ),
        ListTile(
          title: const Text('Check Box'),
          trailing: Checkbox(
            value: checkBoxVal,
            onChanged: (bool? newValue){
              setState(() {
                checkBoxVal = newValue!;
              });
            },
          ),
        ),
        const ListTile(
          title: Text('Disabled Check Box'),
          trailing: Checkbox(
            tristate: true,
            value: false,
            onChanged: null,
          ),
        ),
      ],
    );
  }
}
