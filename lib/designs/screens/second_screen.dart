// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medical_design/designs/custom_widgets/custom_cardview.dart';
import 'package:medical_design/designs/custom_widgets/custom_heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Welcome User",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Jagdish",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize:25 ),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ))
                    ]),
              ),
              Heading(title: "Upcoming Consulations"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCardView(name: "name", color: Colors.red),
                    SizedBox(
                      width: 15,
                    ),
                    CustomCardView(
                        name: "name", color: Color.fromARGB(255, 54, 244, 149)),
                    SizedBox(
                      width: 15,
                    ),
                    CustomCardView(name: "name", color: Colors.red),
                    SizedBox(
                      width: 15,
                    ),
                    CustomCardView(
                        name: "name", color: Color.fromARGB(255, 92, 44, 41)),
                    SizedBox(
                      width: 15,
                    ),
                    CustomCardView(
                        name: "name", color: Color.fromARGB(255, 107, 26, 161)),
                    SizedBox(
                      width: 15,
                    ),
                    CustomCardView(
                        name: "name", color: Color.fromARGB(255, 58, 221, 99)),
                    SizedBox(
                      width: 15,
                    ),

                    //  CustomConsulationCard(),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Heading(title: "Patients Profile")),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Color.fromARGB(255, 81, 223, 128),
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                  height: 65,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color.fromARGB(255, 140, 175, 192)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          width: 190,
                          height: 54,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Color.fromARGB(255, 39, 49, 51)),
                          alignment: Alignment.center,
                          child: Text("Last Enquires",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 177, 184),
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                            width: 190,
                            height: 54,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: Color.fromARGB(255, 235, 147, 141)),
                            alignment: Alignment.center,
                            child: Text("Reports",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 2, 20, 24),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                    height: 60,
                    child: Row(
                      children: [
                        VerticalDivider(
                          color: Colors.green,
                          thickness: 7,
                        ),
                        Container(
                          child: Row(
                         
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: CircleAvatar(
                                  radius: 27,
                                  child: Icon(Icons.person),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dr. Johny Sins",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text("Gynochologist", style: TextStyle (color: Colors.grey,fontSize: 14),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        )));
  }
}
