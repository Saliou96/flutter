import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/widgets/intro/intro1.dart';
import 'package:ecommerce/widgets/intro/intro2.dart';
import 'package:ecommerce/widgets/intro/intro3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      backgroundColor: Colors.white,
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
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blue, dotHeight: 5),
                ),
                ElevatedButton.icon(

                  label: Text(''),
                  icon: Icon(onLastPage ? Icons.done : Icons.adaptive.arrow_forward),
                  onPressed: () {
                    onLastPage
                        ? Navigator.pushReplacement(
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
                      fixedSize: const Size(100, 25),
                      backgroundColor: Color.fromARGB(255, 33, 150, 243),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
