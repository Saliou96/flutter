import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:detector/components/body/body.dart';
import 'package:detector/components/bottomNavBar/bottomnav.dart';
import 'package:detector/components/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.history, size: 30),
    Icon(Icons.home, size: 30),
    Icon(Icons.person, size: 30),
  ];

  int _index = 1;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            title: Text(
              "...",
              style: TextStyle(color: Colors.black,fontSize: 32),
            ),
          ),
          // drawer: CustomDrawer(),
          body: SingleChildScrollView(child: CustomBody(index: _index)),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: _index,
            height: 60.0,
            items: items,
            animationCurve: Curves.easeInOut,
            backgroundColor: Colors.white,
            color: Colors.orange,
            animationDuration: Duration(milliseconds: 300),
            onTap: (selected) {
              setState(() {
                _index = selected;
              });
            },
            letIndexChange: (index) => true,
          )),
    );
  }
}
