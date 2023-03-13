import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Row(
        children: [
          Container(
            color: Colors.greenAccent,
            child: FlutterLogo(
              size: 80.0,
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: FlutterLogo(
              size: 80.0,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 80.0,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}