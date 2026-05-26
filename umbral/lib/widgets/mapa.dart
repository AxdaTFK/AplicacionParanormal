import 'package:flutter/material.dart';
import '../main.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(),
      ),

      body: const Center(
        child: Text(
          "Mapa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),

      bottomNavigationBar: const Bottombar(),
    );
  }
}