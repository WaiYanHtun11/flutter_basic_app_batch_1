import 'package:flutter/material.dart';
class OtherStatefulWidgets extends StatefulWidget {
  const OtherStatefulWidgets({super.key});

  @override
  State<OtherStatefulWidgets> createState() => _OtherStatefulWidgetsState();
}

class _OtherStatefulWidgetsState extends State<OtherStatefulWidgets> {
  bool switchVal = true;
  bool checkBoxVal = true;
  double slider1Val = 0.5;
  double slider2Val = 50;
  int radioVal =  0;

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
        const ListTile(
          title: Text('Slider'),
        ),
        Slider(
            value: slider1Val,
            onChanged: (double newValue){
              setState(() {
                slider1Val = newValue;
              });
            }
        ),
        const ListTile(
          title: Text('Slider with divisions and label'),
        ),
        Slider(
            value: slider2Val,
            max: 100.0,
            divisions: 5,
            label: '${slider2Val.round()}',
            onChanged: (double newValue){
              setState(() {
                slider2Val = newValue;
              });
            }
        ),
        const ListTile(
          title: Text('Linear Progress Indicator'),
        ),
        const LinearProgressIndicator(
          color: Colors.deepOrange,
          backgroundColor: Colors.blueAccent,
          semanticsLabel: '20%',
        ),
        const ListTile(
          title: Text('Circular Progress Indicator'),
        ),
        const Center(
          child: CircularProgressIndicator(color: Colors.green,),
        ),
        const ListTile(
          title: Text('Radio'),
        ),
        Row(
          children: [0,1,2,3]
              .map((int index) => Radio<int>(
                  value: index,
                  groupValue: radioVal,
                  onChanged: (int? newIndex) => setState(() {
                    radioVal = newIndex!;
                  }),
                ))
              .toList(),
        )
      ],
    );
  }
}
