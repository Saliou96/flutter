import 'package:auth_register_ui/components/cercle.dart';
import 'package:auth_register_ui/components/header.dart';
import 'package:auth_register_ui/components/square.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
        drawer: Drawer(
          child: Container(
            child: const Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      "FOOD APP",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text("data"),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text(
                              "WELCOME",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text(
                              "WELCOME",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Cercle(),
                  SizedBox(height: 20),
                  Text(
                    "Rated",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Square(),
                  SizedBox(height: 20),
                  Text(
                    "Latest",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Square(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Color.fromRGBO(242, 226, 206, 1),
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(Icons.history, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      ),
    );
  }
}
