import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 402,
          height: 874,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.50, -0.00),
              end: Alignment(0.50, 1.00),
              colors: [Colors.black, const Color(0xFF2A3A6E)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 402,
                  height: 874,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFF0B1020), const Color(0xFF29396E)],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 126,
                        child: Container(
                          width: 402,
                          height: 663,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: const Color(0x00C9BBBB)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -2,
                                top: 277,
                                child: Container(
                                  width: 400,
                                  padding: const EdgeInsets.all(10),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    spacing: 27,
                                    children: [
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 115,
                                        height: 149,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 115,
                                                height: 115,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(57.50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 118,
                                              child: Container(
                                                width: 115,
                                                height: 31,
                                                decoration: ShapeDecoration(
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(42),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 45,
                                              top: 122,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                            Positioned(
                                              left: 34,
                                              top: 144,
                                              child: Container(
                                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 80,
                                              top: 124,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://placehold.co/20x20"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 0,
                                child: SizedBox(
                                  width: 51,
                                  height: 24,
                                  child: Text(
                                    'NEWS\n',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Lalezar',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 240,
                                child: SizedBox(
                                  width: 67,
                                  child: Text(
                                    'PODCAST',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Lalezar',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 468,
                                child: SizedBox(
                                  width: 67,
                                  child: Text(
                                    'STORIES',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Lalezar',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -2,
                                top: 28,
                                child: Container(
                                  width: 400,
                                  padding: const EdgeInsets.all(10),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 234,
                                        height: 174,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(alpha: 0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 10,
                                              top: 145,
                                              child: Text(
                                                'Text',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'SF Pro',
                                                  fontWeight: FontWeight.w200,
                                                  height: 1.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 515,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 219,
                                top: 515,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 677,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 219,
                                top: 677,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 839,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 215,
                                top: 839,
                                child: Container(
                                  width: 161,
                                  height: 124,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 6,
                                        top: 87,
                                        child: SizedBox(
                                          width: 149,
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis imperdiet mauris, eu gravida ligula. Morbi eget metus dictum, rutrum ante eu, feugiat nibh. Nullam erat arcu, blandit vitae fringilla ut, venenatis sed felis. Etiam lacinia nec dui a suscipit. ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 5,
                                              fontFamily: 'Lalezar',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 86,
                child: SizedBox(
                  width: 63,
                  height: 15,
                  child: Text(
                    'HOME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(color: const Color(0x00D2D2D2)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 402,
                        padding: const EdgeInsets.only(
                          top: 21,
                          left: 24,
                          right: 24,
                          bottom: 19,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 154,
                          children: [
                            Expanded(
                              child: Container(
                                height: 22,
                                padding: const EdgeInsets.only(top: 1.50),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      '9:41',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 1.29,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 22,
                                padding: const EdgeInsets.only(top: 1, right: 1),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 7,
                                  children: [
                                    Container(
                                      width: 27.33,
                                      height: 13,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Opacity(
                                              opacity: 0.35,
                                              child: Container(
                                                width: 25,
                                                height: 13,
                                                decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1, color: Colors.white),
                                                    borderRadius: BorderRadius.circular(4.30),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 2,
                                            top: 2,
                                            child: Container(
                                              width: 21,
                                              height: 9,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2.50),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -439,
                top: -414,
                child: Container(
                  decoration: BoxDecoration(color: const Color(0xFF010101)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 402,
                        height: 50,
                        padding: const EdgeInsets.only(top: 21),
                        decoration: BoxDecoration(color: const Color(0xFFA1A1A1)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(color: const Color(0xFFA1A1A1)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 134,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 16, right: 6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            '9:41',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFFA1A1A1),
                                              fontSize: 17,
                                              fontFamily: 'SF Pro',
                                              fontWeight: FontWeight.w500,
                                              height: 1.29,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(width: 124, height: 10),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 6, right: 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 7,
                                        children: [
                                          Opacity(
                                            opacity: 0.35,
                                            child: Container(
                                              width: 25,
                                              height: 13,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: const Color(0xFFA1A1A1),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4.30),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 21,
                                            height: 9,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFA1A1A1),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(2.50),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 794,
                child: Container(
                  width: 402,
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/45x45"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/45x45"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/45x45"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/45x45"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/45x45"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 363,
                top: 81,
                child: Container(
                  width: 22,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/22x25"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
