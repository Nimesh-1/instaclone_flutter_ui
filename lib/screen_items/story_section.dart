import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: _story_list(),
          );
        });
  }
}

_story_list() {
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 223, 219, 219),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 240, 237, 237),
        ),
        child: Icon(
          Icons.person,
          size: 80,
          color: Colors.white,
        ),
      ),
    ),
  ]);
}
