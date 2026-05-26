import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool recordar = false;
  bool olvidoPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(currentIndex: 4),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF08133F),
              Color(0xFF27367D),
            ],
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // Icono perfil superior derecho
              Positioned(
                top: 15,
                right: 15,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 30,
                ),
              ),

              Center(
                child: Container(
                  width: 320,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 30),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "User",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: 90,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF27367D),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Login"),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: recordar,
                                onChanged: (value) {
                                  setState(() {
                                    recordar = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Recordarme",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Checkbox(
                                value: olvidoPassword,
                                onChanged: (value) {
                                  setState(() {
                                    olvidoPassword = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Olvidé mi contraseña",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "No eres usuario? ",
                            style: TextStyle(fontSize: 13),
                          ),

                          GestureDetector(
                            onTap: () {
                              // Navegar a Sign Up
                            },
                            child: const Text(
                              "Sing Up",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF27367D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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