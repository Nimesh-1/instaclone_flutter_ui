import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/bottomnavbar.dart';
import 'package:instaclone/screen_items/posts.dart';

import 'package:instaclone/screen_items/story_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: _appbar(),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
                child: StorySection(),
              ),
              Posts(),
            ],
          ),
        ),
        bottomNavigationBar: const Bottomnavbar(),
      ),
    );
  }
}

_appbar() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'BilboSwashCaps',
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            width: 160,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Icon(
                  color: Colors.white,
                  Icons.favorite_border,
                  size: 30,
                ),
                SizedBox(width: 15),
                Icon(
                  color: Colors.white,
                  Icons.send,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
