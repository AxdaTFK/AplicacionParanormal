import 'package:flutter/material.dart';
import '../main.dart';

class Cuenta extends StatefulWidget {
  const Cuenta({super.key});

  @override
  State<Cuenta> createState() => _CuentaState();
}

class _CuentaState extends State<Cuenta> {
  bool recordar = false;
  bool olvidoPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: CustomAppBar(title: "Cuenta"),
      ),

      bottomNavigationBar: const Bottombar(),

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
              /// LOGIN CARD
              Center(
                child: SingleChildScrollView(
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

                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 10,
                          runSpacing: 5,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
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
                              mainAxisSize: MainAxisSize.min,
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

                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            const Text(
                              "No eres usuario? ",
                              style: TextStyle(fontSize: 13),
                            ),
                            GestureDetector(
                              onTap: () {},
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}