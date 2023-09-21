import 'package:flutter/material.dart';

class HomeP extends StatelessWidget {
  const HomeP({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Mamadou");
              },
              child: Text("New"),
            ),
          ],
        )
      ],
    );
  }
}
