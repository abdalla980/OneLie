import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundNumberScreen extends StatelessWidget {
  final int round;

  const RoundNumberScreen({super.key, required this.round});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      if (context.mounted) {
        Navigator.pop(context);
      }
    });

    return Scaffold(
      body: Container(
        color: const Color(0xFF0A0A2E),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ONE PHONE',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFC700),
                        ),
                      ),
                      Text(
                        'ONE LIE',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFC700),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFC700),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '$round',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF0A0A2E),
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
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
    );
  }
}

