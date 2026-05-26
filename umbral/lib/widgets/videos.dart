import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text("Videos"),
      ),

      body: const Center(
        child: Text(
          "Pantalla Videos",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}