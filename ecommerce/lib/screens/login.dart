import 'package:ecommerce/screens/register.dart';
import 'package:ecommerce/widgets/login/loginform.dart';
import 'package:ecommerce/widgets/login/square_sn.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Image.asset("assets/images/logo.png",fit: BoxFit.contain),
                    LoginForm(),
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
                                builder: (context) => const Register()),
                          );
                        },
                        child: Text(
                          "No account? Sign up.",
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
