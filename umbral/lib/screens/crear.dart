import 'package:flutter/material.dart';
import '../main.dart';

class Crear extends StatefulWidget {
  const Crear({super.key});

  @override
  State<Crear> createState() => _CrearState();
}

class _CrearState extends State<Crear> {
  int selectedMode = 3;

  final List<String> modos = [
    "30mn",
    "15mn",
    "5mn",
    "Foto",
    "Texto",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),

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
          child: Center( // 🔥 CENTRADO REAL
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 420, // 🔥 evita que se estire raro en pantallas grandes
              ),

              child: Padding(
                padding: const EdgeInsets.all(12),

                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD3D9F3),
                    borderRadius: BorderRadius.circular(40),
                  ),

                  child: Stack(
                    children: [
                      /// AREA CAMARA
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            color: const Color(0xFFD3D9F3),
                          ),
                        ),
                      ),

                      /// BOTONES DERECHA
                      Positioned(
                        top: 20,
                        right: 18,
                        child: Column(
                          children: [
                            _toolButton(Icons.cached),
                            const SizedBox(height: 25),
                            _toolButton(Icons.flash_on),
                            const SizedBox(height: 25),
                            _toolButton(Icons.timer_outlined),
                            const SizedBox(height: 25),
                            _toolButton(Icons.grid_view),
                            const SizedBox(height: 25),
                            _toolButton(Icons.person_search),
                            const SizedBox(height: 25),
                            _toolButton(Icons.blur_circular),
                            const SizedBox(height: 25),
                            _toolButton(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),

                      /// MODOS
                      Positioned(
                        bottom: 110,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            modos.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedMode = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  modos[index],
                                  style: TextStyle(
                                    color: selectedMode == index
                                        ? Colors.black
                                        : Colors.black87,
                                    fontSize: 13,
                                    fontWeight: selectedMode == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// FILTROS
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                width: 36,
                                height: 36,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                          ),
                        ),
                      ),

                      /// BOTON CAPTURA
                      Positioned(
                        bottom: 38,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFB7C1E8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _toolButton(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: 32,
        color: Colors.black,
      ),
    );
  }
}