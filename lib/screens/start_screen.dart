import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            color: const Color(0xFF0A0A2E),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 1),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(190),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Text(
                              'ONE PHONE',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2
                                  ..color = Colors.black,
                              ),
                            ),
                            Text(
                              'ONE PHONE',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFC700),
                                letterSpacing: 2,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 2,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Text(
                              'ONE LIE',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2
                                  ..color = Colors.black,
                              ),
                            ),
                            Text(
                              'ONE LIE',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFC700),
                                letterSpacing: 2,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 2,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Spacer(flex:3),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CategoryScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF87CEEB),
                      padding: const EdgeInsets.symmetric(horizontal:120, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Play',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF0A0A2E),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Understand the game',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1.2,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
