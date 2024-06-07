import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/add_section.dart';
import 'package:instaclone/screen_items/home.dart';
import 'package:instaclone/screen_items/profile.dart';
import 'package:instaclone/screen_items/reels.dart';
import 'package:instaclone/screen_items/search_screen.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    int myindex = 0;
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  size: 38,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddSection(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.add_box_outlined,
                  size: 40,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reels(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.movie_creation_outlined,
                  size: 40,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 175, 169, 169),
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 175, 169, 169),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.person,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              label: ''),
        ],
      ),
    );
  }
}
