import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/bottomnavbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: profile(),
        bottomNavigationBar: const Bottomnavbar(),
      ),
    );
  }
}

profile() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.lock_outline, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'Username...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 110),
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 223, 219, 219),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 240, 237, 237),
              ),
              child: const Icon(
                Icons.person,
                size: 80,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 30),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 14),
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      '82',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 75),
                    Text(
                      '77',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'posts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'followers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'following',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        const Text(
          'Username...',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          'your descreption here...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Container(
              height: 35,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 68, 68, 68),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Edit profie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 35,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 68, 68, 68),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Share profie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 4),
            Container(
              height: 35,
              width: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 68, 68, 68),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.group_add_outlined, color: Colors.white)],
              ),
            ),
          ],
        ),
        const SizedBox(height: 100),
        const Center(
          child: Column(
            children: [
              Icon(
                Icons.add_a_photo_outlined,
                color: Colors.white,
                size: 140,
              ),
              Text(
                'Add a Photo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
