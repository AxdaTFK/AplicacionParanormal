import 'package:flutter/material.dart';
import '../main.dart';
import 'resena.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Mapa"),
      ),
      bottomNavigationBar: const Bottombar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF08133F), Color(0xFF29396E)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// MAPA (usa Expanded para ocupar espacio proporcional)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Image.network(
                          "https://i.pinimg.com/736x/05/43/7d/05437dcc3fc01fc1a64be74160c59e5b.jpg",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const Positioned(
                          top: 80,
                          left: 100,
                          child: Icon(Icons.location_on, color: Colors.red, size: 35),
                        ),
                        const Positioned(
                          top: 150,
                          left: 220,
                          child: Icon(Icons.location_on, color: Colors.green, size: 35),
                        ),
                        const Positioned(
                          top: 60,
                          right: 70,
                          child: Icon(Icons.location_on, color: Colors.orange, size: 35),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// BOTÓN EXPERIENCIA (REDIRECCIÓN A RESENA)
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Resena(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  icon: const Icon(Icons.rate_review),
                  label: const Text("Cuéntanos tu experiencia"),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Leyenda",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                _legendItem(color: Colors.green, text: "Zonas no exploradas"),
                _legendItem(color: Colors.pink, text: "Zonas de interés"),
                _legendItem(color: Colors.amber, text: "Zonas de baja actividad"),
                _legendItem(color: Colors.red, text: "Zonas de alta actividad"),
                _legendIconItem(icon: Icons.my_location, text: "Tu ubicación"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _legendItem({required Color color, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }

  Widget _legendIconItem({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 25),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }
}
