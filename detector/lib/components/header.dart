import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: ListTile(
        iconColor: Colors.black,
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        title: Text(
          "FOOD APP",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
