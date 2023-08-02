import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool isNumberInputValid = true;
  bool showPassword = false;
  TextEditingController bioController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  Widget buildNumberTextField(){
    return TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
        icon: const Icon(Icons.attach_money_outlined),
        labelText: 'Enter an integer',
        errorText: isNumberInputValid ? null : 'Please enter an integer' ,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
      onSubmitted: (val) => Fluttertoast.showToast(msg: 'value: $val'),
      onChanged: (val){
        final v = int.parse(val);
        if(v == null){
          setState(() {
            isNumberInputValid = false;
          });
        }else{
          setState(() {
            isNumberInputValid = true;
          });
        }
      },
    );
  }
  Widget buildMultilineTextField(){
    return TextField(
      controller: bioController,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      onChanged: (data) => setState(() {
      }),
      onSubmitted: (data) => Fluttertoast.showToast(msg: bioController.text),
      decoration: InputDecoration(
        counterText: 'Words: ${bioController.text.split(' ').length}',
        labelText: 'Enter your bio...',
        hintText: 'type something about yourself...',
        border: const OutlineInputBorder()
      ),
    );
  }
  Widget buildPasswordField(){
    return TextField(
      controller: passwordController,
      obscureText: !showPassword,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Enter Password',
          prefixIcon: const Icon(Icons.security_outlined),
          suffixIcon: IconButton(
            onPressed: (){
              Fluttertoast.showToast(msg: passwordController.text);
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon: Icon(
                Icons.remove_red_eye,
                color: showPassword ? Colors.blue : Colors.grey
            ),
          )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const ListTile(title: Text('Number Input Field')),
        buildNumberTextField(),
        const ListTile(title: Text('Multiline Input Field')),
        buildMultilineTextField(),
        const ListTile(title: Text('Password Input Field')),
        buildPasswordField()
      ],
    );
  }
}

