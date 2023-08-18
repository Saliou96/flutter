import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset("assets/images/logo.png"),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange,
                  ),
                ),
                Container(
                  height: 490,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green),
                ),
                Container(
                  height: 480,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "TEXT GRAND FORMATTEXT GRAND FORMATTEXT GRAND FORMATTEXT GRAND FORMATTEXT GRAND FORMATTEXT GRAND FORMATTEXT GRAND FORMAT",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text("SIGN IN"),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(250, 40),
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            )
                          ]),
                      SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text("SIGN UP"),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(250, 40),
                                  primary: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            )
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
