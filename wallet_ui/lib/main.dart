import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/home.dart';
import 'package:wallet_ui/screens/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List(),
      debugShowCheckedModeBanner: false,
    );
  }
}
