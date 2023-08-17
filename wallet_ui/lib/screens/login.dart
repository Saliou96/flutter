import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
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
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(children: [
                            ElevatedButton(
                              child: Text("SIGN IN"),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(250, 40),
                                  primary: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            )
                          ]),
                          SizedBox(height: 20),
                          Row(children: [
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
                  ),
                ],
              ),
          ],
        ),
        Row()
      ],
    ));
  }
}
