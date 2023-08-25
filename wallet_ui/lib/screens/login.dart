import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/f_page.dart';
import 'package:wallet_ui/screens/onboarding.dart';
import 'package:wallet_ui/screens/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 35,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  // Check if this field is empty
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }

                                  // using regular expression
                                  if (!RegExp(r'\S+@\S+\.\S+')
                                      .hasMatch(value)) {
                                    return "Please enter a valid email address";
                                  }

                                  // the email is valid
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    hintText: 'Email',
                                    labelText: "Email"),
                              ),
                              const SizedBox(height: 25),
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  if (value.trim().length < 8) {
                                    return 'Password must be at least 8 characters in length';
                                  }
                                  // Return null if the entered password is valid
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    hintText: 'Password',
                                    labelText: "Password"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                _formKey.currentState?.validate();
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(260, 50),
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text("Login",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Register();
                                    }),
                                  );
                                },
                                child: Text(
                                  "No account? Register",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
