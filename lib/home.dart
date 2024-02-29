// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 0;

  void NavigateToItems(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.linked_camera)),
            IconButton(onPressed: () {}, icon: Icon(Icons.linked_camera)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(color: Colors.red),
            onTap: NavigateToItems,
            currentIndex: selected,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Post"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: "Media"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}
