import 'package:flutter/material.dart';
import '../main.dart';

class Crear extends StatelessWidget {
  const Crear({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Crear"),
      ),

      body: const GradientBackground(
        child: Center(
          child: Text(
            "Crear",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
