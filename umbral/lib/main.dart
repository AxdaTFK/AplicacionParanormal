import 'package:flutter/material.dart';
import 'widgets/videos.dart';

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

        body: const SafeArea(
          child: SingleChildScrollView(
            child: Frame33(),
          ),
        ),

        bottomNavigationBar: const Bottombar(),
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
            onPressed: () {},

            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Videos(),
                ),
              );
            },

            icon: const Icon(
              Icons.video_library,
              color: Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.add_circle,
              color: Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.location_on,
              color: Colors.white,
              size: 30,
            ),
          ),

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
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
            child: Row(
              children: List.generate(
                6,
                (index) => const NewsCard(),
              ),
            ),
          ),

          const SizedBox(height: 30),

          const SectionTitle(title: "PODCAST"),

          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => const PodcastCard(),
              ),
            ),
          ),

          const SizedBox(height: 30),

          const SectionTitle(title: "STORIES"),

          const SizedBox(height: 12),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,

            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
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

  const SectionTitle({
    super.key,
    required this.title,
  });

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
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
          ),
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
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 20,
                ),

                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 20,
                ),
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
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}