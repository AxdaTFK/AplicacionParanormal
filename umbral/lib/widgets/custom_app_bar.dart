import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: Row(
          children: [
            IconButton(
              onPressed: () {},

              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 28,
              ),
            ),

            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const CircleAvatar(
              radius: 20,

              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJD0biXKfRJ_mccap0d2Y3rdtobjxsUlDWsQ&s",
              ),
            ),
          ],
        ),
      ),
    );
  }
}