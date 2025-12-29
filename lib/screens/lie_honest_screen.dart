import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LieHonestScreen extends StatelessWidget {
  final String playerName;
  final bool shouldLie;

  const LieHonestScreen({
    super.key,
    required this.playerName,
    required this.shouldLie,
  });

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 20),
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
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$playerName,',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (shouldLie) ...[
                        Text(
                          'You must',
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Lie',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Be convincing.',
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                        ),
                      ] else ...[
                        Text(
                          'You may answer the',
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'upcoming question',
                          style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'HONESTLY',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      const SizedBox(height: 40),
                      Text(
                        'Don\'t reveal this',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'screen.',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF87CEEB),
                    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF0A0A2E),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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

