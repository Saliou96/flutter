import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/screens/f_page.dart';
import 'package:wallet_ui/screens/intro/intro1.dart';
import 'package:wallet_ui/screens/intro/intro2.dart';
import 'package:wallet_ui/screens/intro/intro3.dart';
import 'package:wallet_ui/screens/login.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  bool onLastPage = false;

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [Intro1(), Intro2(), Intro3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ColorTransitionEffect(activeDotColor: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () {
                    onLastPage
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Login();
                          }),
                        )
                      : _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(onLastPage ? "DONE" : "NEXT",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
