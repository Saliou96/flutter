import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/home.dart';
import 'package:wallet_ui/screens/list.dart';
import 'package:wallet_ui/screens/f_page.dart';
import 'package:wallet_ui/screens/login.dart';
import 'package:wallet_ui/screens/onboarding.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

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
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 400,
              height: 400,
            ),
            // const CircularProgressIndicator(
            //   color: Colors.black,
            //   strokeWidth: 1,
            // ),
          ],
        ),
        nextScreen: const Onboarding(),
        splashIconSize: 400,
        centered: true,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Colors.white,
        animationDuration: const Duration(seconds: 3),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
