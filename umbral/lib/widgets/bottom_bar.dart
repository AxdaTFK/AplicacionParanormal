import 'package:flutter/material.dart';

import '../home.dart';
import '../reels.dart';
import '../create.dart';
import '../map.dart';
import '../login.dart';

class BottomBar extends StatelessWidget {

  final int currentIndex;

  const BottomBar({
    super.key,
    required this.currentIndex,
  });

  void navigate(BuildContext context, Widget page) {

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80,
      color: Colors.black,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          IconButton(
            onPressed: () {
              navigate(context, const HomeScreen());
            },

            icon: Icon(
              Icons.home,
              color: currentIndex == 0
                  ? Colors.blue
                  : Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {
              navigate(context, const ReelsScreen());
            },

            icon: Icon(
              Icons.video_library,
              color: currentIndex == 1
                  ? Colors.blue
                  : Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {
              navigate(context, const CreateScreen());
            },

            icon: Icon(
              Icons.add_circle,
              color: currentIndex == 2
                  ? Colors.blue
                  : Colors.white,
              size: 35,
            ),
          ),

          IconButton(
            onPressed: () {
              navigate(context, const MapScreen());
            },

            icon: Icon(
              Icons.location_on,
              color: currentIndex == 3
                  ? Colors.blue
                  : Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {
              navigate(context, const LoginScreen());
            },

            icon: Icon(
              Icons.person,
              color: currentIndex == 4
                  ? Colors.blue
                  : Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}