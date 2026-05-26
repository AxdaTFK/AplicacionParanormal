import 'package:flutter/material.dart';
import '../main.dart';

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Cuenta"),
      ),

      body: const GradientBackground(
        child: Center(
          child: Text(
            "Cuenta",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
