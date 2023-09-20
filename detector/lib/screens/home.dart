import 'package:detector/components/body/body.dart';
import 'package:detector/components/bottomNavBar/bottomnav.dart';
import 'package:detector/components/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: CustomDrawer(),
        body:SingleChildScrollView(child: CustomBody()) ,
        bottomNavigationBar: CustomBottomNavbar()
      ),
    );
  }
}
