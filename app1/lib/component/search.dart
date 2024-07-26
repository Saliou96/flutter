import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.black,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: "Search...",
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.black),
    );
    // Container(
    //   decoration: BoxDecoration(
    //       color: Colors.white, borderRadius: BorderRadius.circular(12)),
    //   child: Padding(
    //     padding: const EdgeInsets.all(10),
    //     child: Row(
    //       children: [
    //         Icon(Icons.search),
    //         SizedBox(width: 10),
    //       ],
    //     ),
    //   ),
    // )
  }
}
