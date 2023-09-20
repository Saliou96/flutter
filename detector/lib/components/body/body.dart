import 'package:detector/components/square_sn.dart';
import 'package:flutter/material.dart';
import 'package:detector/components/cercle.dart';
import 'package:detector/components/square.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently",
                  style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list_rounded))
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: Square()),
          ],
        ),
      ),
    );
  }
}
