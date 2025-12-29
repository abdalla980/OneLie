import 'package:flutter/material.dart';
import 'category_screen.dart';

class WinnerScreen extends StatelessWidget {
  final String winner;
  final Map<String, int> scores;
  final List<String> players;
  final VoidCallback onNewGame;

  const WinnerScreen({
    super.key,
    required this.winner,
    required this.scores,
    required this.players,
    required this.onNewGame,
  });

  @override
  Widget build(BuildContext context) {
    final sortedPlayers = players.toList()
      ..sort((a, b) => (scores[b] ?? 0).compareTo(scores[a] ?? 0));

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
                    const Spacer(),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 40),
              Text(
                '${winner.toUpperCase()} IS THE',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'WINNER!',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: sortedPlayers.map((player) {
                      final score = scores[player] ?? 0;
                      return Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              player,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '$score',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: onNewGame,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF87CEEB),
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                  ),
                  child: const Text(
                    'Start Another game',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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

