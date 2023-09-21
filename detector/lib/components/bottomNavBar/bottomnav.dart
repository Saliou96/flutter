import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  final items = const [
    Icon(Icons.history, size: 30),
    Icon(Icons.home, size: 30),
    Icon(Icons.add, size: 30),
  ];

  int _index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: _index,
      height: 60.0,
      items: items,
      animationCurve: Curves.easeInOut,
      backgroundColor: Colors.white,
      color: Color.fromRGBO(242, 226, 206, 1),
      animationDuration: Duration(milliseconds: 300),
      onTap: (selected) {
        setState(() {
          _index = selected;
        });
      },
      letIndexChange: (index) => true,
    );
  }
}
