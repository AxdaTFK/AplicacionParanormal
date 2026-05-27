import 'package:flutter/material.dart';
import '../main.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  final List<String> categorias = const [
    "Gótico",
    "Slasher",
    "Cósmico",
    "Sobrenatural",
    "Psicológico",
    "Weird",
    "Monster",
    "Gore",
    "Splatter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// APPBAR ORIGINAL (NO TOCADO)
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Videos"),
      ),

      /// BOTTOMBAR ORIGINAL (NO TOCADO)
      bottomNavigationBar: const Bottombar(),

      /// SOLO CAMBIAMOS EL BODY
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0B1020),
              Color(0xFF29396E),
            ],
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              /// CATEGORÍAS
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: categorias.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        top: 6,
                        bottom: 6,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          categorias[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              /// REELS
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return _buildReel();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReel() {
    return Stack(
      fit: StackFit.expand,
      children: [
        /// VIDEO / IMAGEN
        Image.network(
          "https://picsum.photos/800/1400",
          fit: BoxFit.cover,
        ),

        /// OSCURECER
        Container(
          color: Colors.black.withValues(alpha: 0.2),
        ),

        /// BOTONES DERECHA
        Positioned(
          right: 15,
          bottom: 120,
          child: Column(
            children: [
              const Icon(Icons.favorite, color: Colors.white, size: 34),
              const Text("12k", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),

              const Icon(Icons.chat_bubble, color: Colors.white, size: 32),
              const Text("324", style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),

              const Icon(Icons.share, color: Colors.white, size: 32),
            ],
          ),
        ),

        /// INFO ABAJO
        const Positioned(
          left: 15,
          right: 80,
          bottom: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "@usuario_horror",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Experiencia paranormal captada en un antiguo hospital abandonado.",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}