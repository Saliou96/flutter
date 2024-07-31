import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double responsiveFontSize = screenWidth * 0.04;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your location",
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: responsiveFontSize),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.orange,
                                    size: responsiveFontSize,
                                  ),
                                  Text(
                                    "New York, Las Cruces",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: responsiveFontSize),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(46, 46, 46,
                                          1), // Couleur de fond grise
                                      shape:
                                          BoxShape.circle, // Forme circulaire
                                    ),
                                    padding: EdgeInsets.all(
                                        8.0), // Marge intérieure pour que l'icône ne touche pas les bords
                                    child: Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(46, 46, 46,
                                          1), // Couleur de fond grise
                                      shape:
                                          BoxShape.circle, // Forme circulaire
                                    ),
                                    padding: EdgeInsets.all(
                                        8.0), // Marge intérieure pour que l'icône ne touche pas les bords
                                    child: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
