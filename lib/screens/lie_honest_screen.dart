import 'package:flutter/material.dart';

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
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFC700),
                  letterSpacing: 2,
                ),
              ),
              Text(
                'ONE LIE',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFC700),
                  letterSpacing: 2,
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$playerName,',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (shouldLie) ...[
                        const Text(
                          'You must',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Lie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Be convincing.',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ] else ...[
                        const Text(
                          'You may answer the',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'upcoming question',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '**HONESTLY**',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      const SizedBox(height: 40),
                      const Text(
                        'Don\'t reveal this',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        'screen.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black,
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

