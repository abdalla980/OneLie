import 'dart:math';
import 'package:flutter/material.dart';
import '../utils/questions_loader.dart';
import 'round_number_screen.dart';
import 'pass_phone_screen.dart';
import 'lie_honest_screen.dart';
import 'question_screen.dart';
import 'voting_screen.dart';
import 'results_screen.dart';
import 'winner_screen.dart';
import 'category_screen.dart';

class GameScreen extends StatefulWidget {
  final String categoryId;
  final List<String> players;
  final int rounds;

  const GameScreen({
    super.key,
    required this.categoryId,
    required this.players,
    required this.rounds,
  });

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Future<Map<String, dynamic>> _questionsFuture;
  List<String> questions = [];
  int currentRound = 0;
  int currentPlayerIndex = 0;
  String? currentQuestion;
  Map<String, int> scores = {};
  Map<String, String> currentVotes = {};
  String? liar;
  List<String> usedQuestions = [];
  Random random = Random();

  @override
  void initState() {
    super.initState();
    _questionsFuture = loadQuestions();
    for (final player in widget.players) {
      scores[player] = 0;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadQuestionsAndStart();
    });
  }

  void _loadQuestionsAndStart() async {
    await _loadQuestions();
    _startRound();
  }

  Future<void> _loadQuestions() async {
    final data = await _questionsFuture;
    final categories = data['categories'] as List;
    final category = categories.firstWhere(
      (cat) => cat['id'] == widget.categoryId,
      orElse: () => categories[0],
    );
    final categoryQuestions = (category['questions'] as List).cast<String>();
    setState(() {
      questions = List.from(categoryQuestions);
      usedQuestions = [];
      if (currentQuestion == null && questions.isNotEmpty) {
        currentQuestion = _getRandomQuestion();
      }
    });
  }

  String _getRandomQuestion() {
    if (questions.isEmpty) return 'Loading...';

    final available = questions.where((q) => !usedQuestions.contains(q)).toList();
    if (available.isEmpty) {
      usedQuestions.clear();
      available.addAll(questions);
    }
    final question = available[random.nextInt(available.length)];
    usedQuestions.add(question);
    return question;
  }

  void _startRound() {
    if (currentRound >= widget.rounds) {
      _showWinner();
      return;
    }
    setState(() {
      currentRound++;
      currentPlayerIndex = 0;
      liar = widget.players[random.nextInt(widget.players.length)];
      currentVotes = {};
    });
    if (questions.isNotEmpty) {
      currentQuestion = _getRandomQuestion();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RoundNumberScreen(round: currentRound)),
    ).then((_) => _continueAfterRoundNumber());
  }

  void _continueAfterRoundNumber() {
    _passPhone();
  }

  void _passPhone() {
    if (currentPlayerIndex >= widget.players.length) {
      _showQuestion();
      return;
    }
    final player = widget.players[currentPlayerIndex];
    final isLiar = player == liar;
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PassPhoneScreen(
          playerName: player,
          onNext: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LieHonestScreen(
                  playerName: player,
                  shouldLie: isLiar,
                ),
              ),
            ).then((_) {
              setState(() {
                currentPlayerIndex++;
              });
              _passPhone();
            });
          },
        ),
      ),
    );
  }

  void _showQuestion() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuestionScreen(
          questionNumber: currentRound,
          question: currentQuestion ?? 'Loading...',
          onStartVoting: () {
            Navigator.pop(context);
            _showVoting();
          },
        ),
      ),
    );
  }

  void _showVoting() {
    final playersWhoVoted = currentVotes.keys.toSet();
    final remainingPlayers = widget.players.where((p) => !playersWhoVoted.contains(p)).toList();
    
    if (remainingPlayers.isEmpty) {
      _showResults();
      return;
    }
    
    final currentVoter = remainingPlayers[0];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VotingScreen(
          currentPlayer: currentVoter,
          players: widget.players,
          onVote: (voter, votedFor) {
            setState(() {
              currentVotes[voter] = votedFor;
            });
          },
          onNext: () {
            Navigator.pop(context);
            _showVoting();
          },
          canReveal: currentVotes.length == widget.players.length - 1,
        ),
      ),
    );
  }

  void _showResults() {
    final correctVotes = currentVotes.values.where((v) => v == liar).length;
    setState(() {
      scores[liar!] = (scores[liar!] ?? 0) + correctVotes;
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsScreen(
          liar: liar!,
          round: currentRound,
          totalRounds: widget.rounds,
          scores: Map.from(scores),
          players: widget.players,
          onNext: () {
            Navigator.pop(context);
            setState(() {
              currentPlayerIndex = 0;
              currentVotes = {};
            });
            if (currentRound < widget.rounds) {
              _startRound();
            } else {
              _showWinner();
            }
          },
        ),
      ),
    );
  }

  void _showWinner() {
    final sortedPlayers = widget.players.toList()
      ..sort((a, b) => (scores[b] ?? 0).compareTo(scores[a] ?? 0));
    final winner = sortedPlayers[0];

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WinnerScreen(
          winner: winner,
          scores: scores,
          players: widget.players,
          onNewGame: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const CategoryScreen()),
              (route) => false,
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}

