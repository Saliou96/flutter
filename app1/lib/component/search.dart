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

    // TextField(
    //                       style: TextStyle(color: Colors.white),
    //                       decoration: InputDecoration(
    //                         prefixIcon: Icon(Icons.date_range),
    //                         prefixIconColor: Colors.white,
    //                           filled: true,
    //                           fillColor:Color.fromRGBO(46, 46, 46, 1),
    //                           border: OutlineInputBorder(
    //                               borderRadius: BorderRadius.circular(8),
    //                               borderSide: BorderSide.none),
    //                           hintText: "search",hintStyle: TextStyle(color: Colors.white)),
    //                     ),
  }
}
