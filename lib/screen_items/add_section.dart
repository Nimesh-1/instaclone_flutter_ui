import 'package:flutter/material.dart';
import 'package:instaclone/screen_items/home.dart';

class AddSection extends StatefulWidget {
  const AddSection({super.key});

  @override
  State<AddSection> createState() => _AddSectionState();
}

class _AddSectionState extends State<AddSection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'This section will be added soon... Stay tuned',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                'close',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
