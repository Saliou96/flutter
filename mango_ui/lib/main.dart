import 'package:flutter/material.dart';
import 'package:mango_ui/screens/home.dart';
import 'package:mango_ui/screens/login.dart';
import 'package:mango_ui/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
    
  }
}
