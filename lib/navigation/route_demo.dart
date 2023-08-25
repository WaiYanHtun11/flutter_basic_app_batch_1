import 'package:flutter/material.dart';
import 'package:flutter_basic_app/home_screen.dart';
class RouteDemo extends StatelessWidget {
  const RouteDemo({super.key});
  static const route = '/page1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go To Page 2'),
          onPressed: (){
            Navigator.push(context,PageTwo());
          },
        ),
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute<void>{
  PageTwo() : super(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Page Two'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go To Page 3'),
            onPressed: (){
              Navigator.push(context, PageThree());
            },
          ),
        ),
      )
  );
}
class PageThree extends MaterialPageRoute<void>{
  PageThree() : super(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Page Three'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go To Home'),
            onPressed: (){
              // Navigator.popUntil(
              //   context,
              //   ModalRoute.withName('/page1') // /home
              // );
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          ),
        ),
      )
  );
}

