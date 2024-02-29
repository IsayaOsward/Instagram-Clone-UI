// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InstaStory();
        });
  }
}

class InstaStory extends StatelessWidget {
  const InstaStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: Colors.amberAccent,
            child: CircleAvatar(
              radius: 32,
              backgroundImage: Image.asset(
                "lib/images/angel.jpg",
              ).image,
            ),
          ),
          Text("Profile Name"),
        ],
      ),
    );
  }
}
