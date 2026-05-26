import 'package:flutter/material.dart';

class AppGradient extends StatelessWidget {
  final Widget child;

  const AppGradient({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [
            Color(0xFF08133F),
            Color(0xFF29396E),
          ],
        ),
      ),

      child: child,
    );
  }
}