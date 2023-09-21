import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

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
      ],
    );
  }
}