
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Heading extends StatelessWidget {
  final String title;
  const Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt, size: 33,) )
      ],
    );
  }
}
