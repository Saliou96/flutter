import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    child: ListTile(iconColor: Colors.white,textColor: Colors.white,
                      leading: Icon(
                        Icons.person_rounded,
                        size: 30,
                      ),
                      title: Text(
                        "WELCOME",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.notifications),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    color: Color(0xFF0DF69E),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text('Total Balance'),
                            ),
                            Container(
                              child: Text(
                                "FCFA 2000.00",
                                style: TextStyle(fontSize: 30),
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
