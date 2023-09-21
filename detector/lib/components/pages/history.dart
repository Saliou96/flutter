import 'package:detector/components/square.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recently",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_rounded))
          ],
        ),
        Container(
            height: MediaQuery.of(context).size.height / 1.5, child: Square()),
      ],
    );
  }
}
