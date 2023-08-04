import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValidate = false;
  final formKey = GlobalKey<FormState>();
  Widget buildMailFormField(){
    return TextFormField(
      controller: mailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Enter Email Address',
        border: OutlineInputBorder()
      ),
      validator: (data){
        if(data == null || data.isEmpty){
          return 'Please Enter Your Email!';
        }else if(!data.contains('@gmail.com')){
          return 'Please Enter Valid Email';
        }else{
          return null;
        }
      },
    );
  }
  Widget buildPasswordFormField(){
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        labelText: 'Enter Password',
          border: OutlineInputBorder()
      ),
      validator: (data){
        if(data == null || data.isEmpty){
          return 'Please Enter Some Password...';
        }else if(data.length < 8){
          return 'Please Enter A Strong Password With Length At Least 8';
        }else{
          return null;
        }
      },
    );
  }
  Widget buildLoginButton(){
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: (){
            if(formKey.currentState!.validate()){
              setState(() {
                isValidate = !isValidate;
              });
            }else{
              setState(() {
                isValidate = false;
              });
            }
          },
          child: const Text('Login',style: TextStyle(fontSize: 20),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.login_outlined,size: 45,),
              ),
              const SizedBox(height: 20),
              const Text('Login Form',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
              const SizedBox(height: 20),
              buildMailFormField(),
              const SizedBox(height: 20),
              buildPasswordFormField(),
              const SizedBox(height: 20),
              buildLoginButton(),
              if(isValidate)
              SizedBox(
                  height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                  child: Text('Mail: ${mailController.text} | Password: ${passwordController.text}'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
