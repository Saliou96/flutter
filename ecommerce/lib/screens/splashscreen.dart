import 'package:ecommerce/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async'; // Importez la bibliothèque dart:async

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Définissez la durée du SplashScreen en millisecondes (par exemple, 3000 ms pour 3 secondes)
    const splashDuration = Duration(milliseconds: 7000);

    // Créez un Timer pour déclencher la navigation après la durée spécifiée
    Timer(splashDuration, () {
      // Naviguez vers votre écran suivant, par exemple, vers la page d'accueil
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => Onboarding(), // Remplacez NextScreen par le nom de votre écran suivant
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/lottie/panier.json")),
    );
  }
}

