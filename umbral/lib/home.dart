import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(currentIndex: 0),

      body: Container(
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

        child: SafeArea(
          child: Column(
            children: [
              /// HEADER
              Container(
                height: 70,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16),

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

                    const Expanded(
                      child: Text(
                        "HOME",
                        textAlign: TextAlign.center,

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJD0biXKfRJ_mccap0d2Y3rdtobjxsUlDWsQ&s",
                      ),
                    ),
                  ],
                ),
              ),

              /// CONTENIDO
              const Expanded(
                child: Center(
                  child: Text(
                    "HOME SCREEN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}