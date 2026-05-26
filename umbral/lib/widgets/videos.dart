import 'package:flutter/material.dart';
import '../main.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Videos"),
      ),

      body: const GradientBackground(
        child: Center(
          child: Text(
            "Pantalla Videos",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),

      bottomNavigationBar: const Bottombar(),
    );
  }
}