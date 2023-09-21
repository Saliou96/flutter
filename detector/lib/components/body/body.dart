import 'package:detector/components/pages/account.dart';
import 'package:detector/components/pages/history.dart';
import 'package:detector/components/pages/homep.dart';
import 'package:detector/screens/home.dart';
import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  final int index;

  const CustomBody({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getSelectedWidget(index: index),
          ],
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = History(); // Use the actual widget here
        break;

      case 1:
        widget = HomeP(); // Use the actual widget here
        break;

      case 2:
        widget = Account(); // Use the actual widget here
        break;

      default:
        widget =
            HomeP(); // You can replace this with a default widget if needed
    }
    return widget;
  }
}
