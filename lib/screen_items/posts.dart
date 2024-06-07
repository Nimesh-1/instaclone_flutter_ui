import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  Widget buildPost(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
              ),
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/1.png'),
              ),
            ),
            const SizedBox(width: 15),
            const Text(
              'routineofnepalbanda',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(width: 150),
            const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 15),
        Image.asset(
          'assets/images/2.jpeg',
          width: screenWidth,
          fit: BoxFit.fitWidth,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
          child: Row(
            children: [
              Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.messenger_outline_sharp,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.share,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(width: 190),
              Icon(
                Icons.bookmark_border_sharp,
                color: Colors.white,
                size: 35,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
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
                  size: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                'Liked by you and 159,767 others',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'routineofnepalbanda Thank You for supporting us and giving us love.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'view all 23 comments',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 5, right: 10),
              child: Container(
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
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              'Add a comment...',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    int numberOfPosts =
        5; // You can change this to any number of posts you want to display
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          numberOfPosts,
          (index) => buildPost(context),
        ),
      ),
    );
  }
}
