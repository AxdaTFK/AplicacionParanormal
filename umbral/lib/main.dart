import 'package:flutter/material.dart';
import 'widgets/videos.dart';
import 'widgets/crear.dart';
import 'widgets/cuenta.dart';
import 'widgets/mapa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.grey[900],

        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(64),
          child: CustomAppBar(title: "Home"),
        ),

        body: const GradientBackground(
          child: SingleChildScrollView(child: Frame33()),
        ),

        bottomNavigationBar: const Bottombar(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.black,

        child: Row(
          children: [
            IconButton(
              onPressed: () {},

              icon: const Icon(Icons.menu, color: Colors.white, size: 28),
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

            Container(
              width: 40,
              height: 40,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                image: const DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJD0biXKfRJ_mccap0d2Y3rdtobjxsUlDWsQ&s",
                  ),
                  fit: BoxFit.cover,
                ),

                border: Border.all(color: Colors.white, width: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainApp()),
              );
            },

            icon: const Icon(Icons.home, color: Colors.white, size: 30),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Videos()),
              );
            },

            icon: const Icon(
              Icons.video_library,
              color: Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Crear()),
              );
            },

            icon: const Icon(Icons.add_circle, color: Colors.white, size: 30),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Mapa()),
              );
            },

            icon: const Icon(Icons.location_on, color: Colors.white, size: 30),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Cuenta()),
              );
            },

            icon: const Icon(Icons.person, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}

class Frame33 extends StatelessWidget {
  const Frame33({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "NEWS"),

          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: List.generate(6, (index) => const NewsCard())),
          ),

          const SizedBox(height: 30),

          const SectionTitle(title: "PODCAST"),

          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(6, (index) => const PodcastCard()),
            ),
          ),

          const SizedBox(height: 30),

          const SectionTitle(title: "STORIES"),

          const SizedBox(height: 12),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.2,
            ),

            itemBuilder: (context, index) {
              return const StoryCard();
            },
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 234,
      height: 174,
      margin: const EdgeInsets.only(right: 12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: const Center(
        child: Text(
          "News",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}

class PodcastCard extends StatelessWidget {
  const PodcastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      margin: const EdgeInsets.only(right: 20),

      child: Column(
        children: [
          Container(
            width: 115,
            height: 115,

            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(57.5),
            ),
          ),

          const SizedBox(height: 8),

          Container(
            width: 115,
            height: 31,

            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(42),
            ),

            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.fast_rewind, color: Colors.white, size: 20),
                Icon(Icons.play_arrow, color: Colors.white, size: 20),

                Icon(Icons.fast_forward, color: Colors.white, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

          colors: [Color(0xFF0B1020), Color(0xFF293A6E)],
        ),
      ),

      child: child,
    );
  }
}
