// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  final String name;
  final Color color;
  const CustomCardView(
      {super.key, required String this.name, required Color this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 21,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "9:05 PM",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Dec 7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 49, 194, 121)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))))
                  ),
                  child: Text("Join the call", style: TextStyle(fontSize: 12),),
                )
              ],
            ),
            const SizedBox(height: 13,
            )
          ],
        ),
      ),
    );
  }
}
