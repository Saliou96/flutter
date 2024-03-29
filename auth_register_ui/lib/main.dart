// import 'package:auth_register_ui/screens/login.dart';
import 'package:auth_register_ui/screens/home.dart';
import 'package:auth_register_ui/screens/login.dart';
import 'package:auth_register_ui/screens/register.dart';
// import 'package:auth_register_ui/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
