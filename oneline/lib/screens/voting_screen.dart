import 'package:flutter/material.dart';

class VotingScreen extends StatefulWidget {
  final String currentPlayer;
  final List<String> players;
  final Function(String, String) onVote;
  final VoidCallback onNext;
  final bool canReveal;

  const VotingScreen({
    super.key,
    required this.currentPlayer,
    required this.players,
    required this.onVote,
    required this.onNext,
    required this.canReveal,
  });

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  String? selectedPlayer;

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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    '${widget.currentPlayer}, Who do you think is lying?',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: widget.players.map((player) {
                      final isSelected = selectedPlayer == player;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedPlayer = player;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: isSelected
                                  ? Border.all(color: const Color(0xFFFFC700), width: 3)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                player,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: selectedPlayer == null
                      ? null
                      : () {
                          widget.onVote(widget.currentPlayer, selectedPlayer!);
                          widget.onNext();
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF87CEEB),
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 0),
                    disabledBackgroundColor: Colors.grey,
                  ),
                  child: Text(
                    widget.canReveal ? 'Reveal the Lier' : 'Next Vote',
                    style: const TextStyle(
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

