import 'package:flutter/material.dart';

class Square_sn extends StatelessWidget {
  final String imagePath;
  const Square_sn({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          print("google");
        },
        child: Image.asset(
          imagePath,
          height: 30,
        ),
      ),
    );
  }
}
