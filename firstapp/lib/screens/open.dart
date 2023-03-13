import 'package:flutter/material.dart';

class Open extends StatelessWidget {
  const Open({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 226, 206,1),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}