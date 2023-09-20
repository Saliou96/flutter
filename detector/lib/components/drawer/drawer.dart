import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        );
  }
}