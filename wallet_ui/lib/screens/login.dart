import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
        alignment: Alignment.bottomCenter,
          children: [
            Container(
              height:500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
            ),
            Container(
              height: 490,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green
              ),
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
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/logo.png')
                      ],
                    ),
                    Row(
                      children:[
                        Text("SAVE MANGO")
                      ]                  
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
