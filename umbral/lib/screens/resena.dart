import 'package:flutter/material.dart';
import '../main.dart';

class Resena extends StatefulWidget {
  const Resena({super.key});

  @override
  State<Resena> createState() => _ResenaState();
}

class _ResenaState extends State<Resena> {
  final TextEditingController descripcionController = TextEditingController();

  final List<Map<String, String>> reviewsUsuarios = List.generate(
    6,
    (index) => {
      "nombre": "Laura Sarabia",
      "tiempo": "Hace un año",
      "descripcion":
          "Lorem ipsum dolor sit amet consectetur adipiscing elit taciti, conubia potenti parturient elementum mattis commodo convallis dignissim, sollicitudin faucibus viverra magna imperdiet est nisi. Vivamus vulputate metus ultrices mauris libero auctor fermentum, hac scelerisque duis eget diam arcu, vestibulum pharetra lobortis urna torquent cubilia. Potenti blandit dignissim enim platea mus accumsan nascetur interdum primis volutpat aliquet, tristique tortor consequat commodo fusce aptent himenaeos class luctus.",
    },
  );

  @override
  void dispose() {
    descripcionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// APPBAR ORIGINAL (NO TOCADO)
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Calificanos"),
      ),

      /// BOTTOMBAR ORIGINAL (NO TOCADO)
      bottomNavigationBar: const Bottombar(),

      /// SOLO BODY MODIFICADO
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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

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

                /// MEDIA UPLOAD
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
                        style: TextStyle(color: Colors.black54),
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 40,
                            color: Colors.black54,
                            onPressed: () {},
                            icon: const Icon(Icons.image),
                          ),
                          IconButton(
                            iconSize: 40,
                            color: Colors.black54,
                            onPressed: () {},
                            icon: const Icon(Icons.video_library),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// DESCRIPCIÓN
                TextField(
                  controller: descripcionController,
                  maxLines: 6,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
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
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),

                const SizedBox(height: 20),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: reviewsUsuarios.length,
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
                      descripcion: reviewsUsuarios[index]["descripcion"]!,
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
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              const SizedBox(width: 8),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: TextStyle(fontSize: 8),
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
              style: const TextStyle(fontSize: 8),
            ),
          ),

          TextButton(
            onPressed: () {},
            child: const Text(
              "Ver más...",
              style: TextStyle(fontSize: 9, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}