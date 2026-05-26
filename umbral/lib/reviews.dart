import 'package:flutter/material.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  final TextEditingController descripcionController =
      TextEditingController();

  final List<Map<String, String>> reviewsUsuarios = List.generate(
    6,
    (index) => {
      "nombre": "Laura Sarabia",
      "tiempo": "Hace un año",
      "descripcion":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam libero blandit.",
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF08133F),
              Color(0xFF2C3E8F),
            ],
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                const Center(
                  child: Text(
                    "Experiencias",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // CONTENEDOR IMAGEN / VIDEO
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Agrega tu contenido +",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 40,
                            color: Colors.black54,
                            onPressed: () {
                              // Seleccionar imagen
                            },
                            icon: const Icon(Icons.image),
                          ),

                          IconButton(
                            iconSize: 40,
                            color: Colors.black54,
                            onPressed: () {
                              // Seleccionar video
                            },
                            icon: const Icon(Icons.video_library),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // DESCRIPCIÓN
                TextField(
                  controller: descripcionController,
                  maxLines: 6,

                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: const InputDecoration(
                    hintText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consectetur elit orci, sit amet fringilla libero blandit id. Interdum et malesuada fames ac ante ipsum primis in faucibus.",

                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),

                    border: InputBorder.none,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  "Otros usuarios",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),

                const SizedBox(height: 20),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  itemCount: 6,

                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    childAspectRatio: 0.70,
                  ),

                  itemBuilder: (context, index) {
                    return _reviewCard(
                      nombre: reviewsUsuarios[index]["nombre"]!,
                      tiempo: reviewsUsuarios[index]["tiempo"]!,
                      descripcion:
                          reviewsUsuarios[index]["descripcion"]!,
                    );
                  },
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _reviewCard({
    required String nombre,
    required String tiempo,
    required String descripcion,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),

      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(
                  "assets/images/profile.jpg",
                ),
              ),

              const SizedBox(width: 8),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      tiempo,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey.shade600,
                      ),
                    ),

                    const SizedBox(height: 2),

                    const Text(
                      "⭐⭐⭐⭐⭐",
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Expanded(
            child: Text(
              descripcion,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
              ),
            ),
          ),

          TextButton(
            onPressed: () {},

            child: const Text(
              "Ver más...",
              style: TextStyle(
                fontSize: 9,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}