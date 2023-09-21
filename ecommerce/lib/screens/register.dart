import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/widgets/login/square_sn.dart';
import 'package:ecommerce/widgets/register/registerform.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Image.asset("assets/images/logo.png",fit: BoxFit.contain),
                    RegisterForm(),
                    // Row(
                    //   children: [
                    //     Expanded(child: Divider(color: Colors.grey)),
                    //     Text("Or continue with"),
                    //     Expanded(child: Divider(color: Colors.grey)),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Square_sn(imagePath: 'assets/images/google-48.png'),
                    //         const SizedBox(
                    //           width: 20,
                    //         ),
                    //         Square_sn(imagePath: 'assets/images/apple-48.png'),
                    //       ],
                    //     )
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: Text(
                          "Already have account? Sign in.",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
