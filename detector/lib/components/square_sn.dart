import 'package:flutter/material.dart';

class Square_sn extends StatelessWidget {
  final String imagePath;
  final String google = 'assets/images/google-48.png';
  final String apple = 'assets/images/apple-48.png';
  const Square_sn({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: GestureDetector(
        child: Image.asset(
          imagePath,
          height:40,
        ),
        onTap: () {
          if(imagePath==google)
          {
            print("Google"); 
          }
          else if(imagePath==apple)
          {
            print("Apple"); 
          }
        },
      ),
    );
  }
}
