import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/bottomnavbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: search_screen(),
          ),
          bottomNavigationBar: Bottomnavbar(),
        ),
      ),
    );
  }

  search_screen() {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                width: screenwidth,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 78, 78),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp, color: Colors.white),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey[350], fontSize: 19),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Wrap(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  right: 3,
                ),
                child: Container(
                  width: screenwidth * 0.4,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/3.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  right: 3,
                ),
                child: Container(
                  width: screenwidth * 0.5,
                  height: 160,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/4.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, right: 3),
                child: Container(
                  width: screenwidth * 0.4,
                  height: 100,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/5.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 3,
                ),
                child: Container(
                  width: screenwidth * 0.5,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/7.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3.0,
                  right: 3,
                ),
                child: Container(
                  width: screenwidth * 1,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/8.jpeg'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 3.0, right: 3, bottom: 3),
                child: Container(
                  width: screenwidth * 0.4,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/11.jpeg'),
                  ),
                ),
              ),

              // Addnew
              Padding(
                padding: const EdgeInsets.only(bottom: 3, top: 3),
                child: Container(
                  width: screenwidth * 0.5,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/9.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, right: 3, bottom: 3),
                child: Container(
                  width: screenwidth * 0.5,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/images/6.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, right: 3, bottom: 3),
                child: Container(
                  width: screenwidth * 0.4,
                  child: Image(
                    image: AssetImage('assets/images/12.jpeg'),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
