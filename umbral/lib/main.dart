import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Home'),
        ),

        bottomNavigationBar: Bottombar(),
      ),
    );
  }
}

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: Colors.black,

      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Colors.white, size: 32),
          Icon(Icons.search, color: Colors.white, size: 32),
          Icon(Icons.favorite, color: Colors.white, size: 32),
          Icon(Icons.person, color: Colors.white, size: 32),
          Icon(Icons.settings, color: Colors.white, size: 32),
        ],
      ),
    );
  }
}