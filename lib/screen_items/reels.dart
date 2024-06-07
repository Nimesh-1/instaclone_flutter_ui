import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/bottomnavbar.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenheight,
                  width: screenheight,
                  child: reels(),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const Bottomnavbar(),
        ),
      ),
    );
  }
}

reels() {
  return Column(
    children: [
      const Row(
        children: [
          Text(
            'Reels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(width: 240),
          Icon(
            Icons.camera_alt_rounded,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
      SizedBox(height: 400),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 175, 169, 169),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 175, 169, 169),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Username>>>.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Real ...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 25,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 68, 68, 68),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.music_note_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      'music...used  audio',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 170),
          Column(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(height: 25),
                  Icon(
                    Icons.comment_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(height: 25),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(height: 25),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.music_note,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ],
  );
}
