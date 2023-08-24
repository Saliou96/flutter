import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/login.dart';

class F_page extends StatelessWidget {
  const F_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/logo.png"),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange,
                  ),
                ),
                Container(
                  height: 590,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green),
                ),
                Container(
                  height: 580,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(80),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      const SizedBox(height: 30),
                      const Text(
                        "Never forget to go green everyday, because the greener you go the higher you get",
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Login();
                                  }),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(260, 50),
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text("SIGN IN",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            )
                          ]),
                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(260, 50),
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text("SIGN UP",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            )
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
