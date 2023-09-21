import 'package:ecommerce/widgets/home/homebody.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: Icon(Icons.menu),
        flexibleSpace: Image.asset("assets/images/logo.png"),
        // title: Image.asset("assets/images/logo.png"),
        actions: [Icon(Icons.notifications)],
      ),
      body: HomeBody(),
    ));
  }
}
