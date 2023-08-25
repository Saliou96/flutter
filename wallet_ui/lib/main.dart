import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/home.dart';
import 'package:wallet_ui/screens/list.dart';
import 'package:wallet_ui/screens/f_page.dart';
import 'package:wallet_ui/screens/login.dart';
import 'package:wallet_ui/screens/onboarding.dart';
import 'package:wallet_ui/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '': (context) => const F_page(),
        '/login': (context) => const Login(),
      },
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
