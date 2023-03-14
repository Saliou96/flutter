import 'package:firstapp/screens/home.dart';
import 'package:firstapp/screens/login.dart';
import 'package:firstapp/screens/open.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mes débuts sur flutter',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

