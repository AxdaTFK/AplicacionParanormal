import 'package:flutter/material.dart';
import '../main.dart';

class Resena extends StatelessWidget {
  const Resena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Calificanos"),
      ),
      body: const GradientBackground(
        child: Center(
          child: Text(
            "Resena",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
