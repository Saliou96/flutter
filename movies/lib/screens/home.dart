import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: Icon(Icons.menu),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}