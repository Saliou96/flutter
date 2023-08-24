import 'package:flutter/material.dart';
import 'package:wallet_ui/screens/f_page.dart';
import 'package:wallet_ui/screens/login.dart';
import 'package:wallet_ui/screens/onboarding.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Onboarding();
                        }),
                      );
                    },
                    icon: Icon(
                      Icons.adaptive.arrow_back_rounded,
                      color: Colors.white,
                      size: 40,
                    ))
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.81,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange,
                  ),
                ),
                Container(
                  height: height * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green),
                ),
                Container(
                  height: height * 0.79,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _lastnameController,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                // Check if this field is empty
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your lastname';
                                }
                                // the lastname is valid
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: 'Lastname',
                                  labelText: "Lastname"),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _firstnameController,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                // Check if this field is empty
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your firstname';
                                }
                                // the firstname is valid
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: 'Firstname',
                                  labelText: "Firstname"),
                            ),
                            const SizedBox(height: 20),
                            // email
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                // Check if this field is empty
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }

                                // using regular expression
                                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                  return "Please enter a valid email address";
                                }

                                // the email is valid
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  hintText: 'Email',
                                  labelText: "Email"),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
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
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _confirmPasswordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'This field is required';
                                }

                                while (value != _passwordController) {
                                  return 'Confimation password does not match the entered password';
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  hintText: 'Confirm password',
                                  labelText: "Confirm Password"),
                            ),
                          ],
                        ),
                      ),
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
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text("CONNEXION",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Login();
                                    }),
                                  );
                                },
                                child: Text(
                                  "Already have account?",
                                  style: TextStyle(color: Colors.black),
                                )),
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
