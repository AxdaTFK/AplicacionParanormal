import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(currentIndex: 3),

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// HEADER
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          "assets/images/profile.jpg",
                        ),
                      ),

                      const Expanded(
                        child: Center(
                          child: Text(
                            "Mapa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 36),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// MAPA
                  Container(
                    height: 300,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300,
                    ),

                    clipBehavior: Clip.hardEdge,

                    child: Stack(
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/World_map_-_low_resolution.svg/1200px-World_map_-_low_resolution.svg.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        const Positioned(
                          top: 80,
                          left: 100,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 35,
                          ),
                        ),

                        const Positioned(
                          top: 150,
                          left: 220,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.green,
                            size: 35,
                          ),
                        ),

                        const Positioned(
                          top: 60,
                          right: 70,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// BOTON EXPERIENCIA
                  ElevatedButton.icon(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(
                        double.infinity,
                        50,
                      ),
                    ),

                    icon: const Icon(Icons.rate_review),

                    label: const Text(
                      "Cuéntanos tu experiencia",
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Leyenda",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _legendItem(
                    color: Colors.green,
                    text: "Zonas no exploradas",
                  ),

                  _legendItem(
                    color: Colors.pink,
                    text: "Zonas de interés",
                  ),

                  _legendItem(
                    color: Colors.amber,
                    text: "Zonas de baja actividad",
                  ),

                  _legendItem(
                    color: Colors.red,
                    text: "Zonas de alta actividad",
                  ),

                  _legendIconItem(
                    icon: Icons.my_location,
                    text: "Tu ubicación",
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _legendItem({
    required Color color,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),

      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,

            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
          ),

          const SizedBox(width: 15),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _legendIconItem({
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),

      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),

          const SizedBox(width: 15),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}