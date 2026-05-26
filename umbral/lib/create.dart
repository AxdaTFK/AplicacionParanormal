import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[850],

      body: const Center(
        child: Text(
          "CREATE SCREEN",

          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),

      bottomNavigationBar: const BottomBar(currentIndex: 2),
    );
  }
}