
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/home_screen.dart';
import 'package:flutter_basic_app/navigation/route_demo.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueGrey
        )
      ),
      home: const HomeScreen(),
      initialRoute: '/home',
      routes: {
        '/home' : (context) => const HomeScreen(),
        '/page1' : (context) => const RouteDemo()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}



