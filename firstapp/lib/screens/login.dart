import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 226, 206,1),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
          ],
        ),
      )

    );
  }
}