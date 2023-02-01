// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'designs/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    final screens = [
      HomeScreen(),
      /* CalendarScreen(),
      SearchScreen(),
      NotificationScreen(),
      AccountScreen() */
    ];
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: currentPage == 0
                    ? Icon(
                        Icons.home,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.home_outlined,
                        color: Colors.grey.shade700,
                      ),
                label: "hello"),
            BottomNavigationBarItem(
                icon: currentPage == 1
                    ? Icon(
                        Icons.calendar_month,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey.shade700,
                      ),
                label: "hello"),
            BottomNavigationBarItem(
                icon: currentPage == 2
                    ? Icon(
                        Icons.search,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.search_outlined,
                        color: Colors.grey.shade700,
                      ),
                label: "hello"),
            BottomNavigationBarItem(
                icon: currentPage == 3
                    ? Icon(
                        Icons.notifications,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey.shade700,
                      ),
                label: "hello"),
            BottomNavigationBarItem(
                icon: currentPage == 4
                    ? Icon(
                        Icons.person,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.person_outline,
                        color: Colors.grey.shade700,
                      ),
                label: "hello"),
          ]),
    );
  }
}
