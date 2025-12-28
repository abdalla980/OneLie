import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const MyApp());
}

Future<Map<String, dynamic>> loadQuestions() async {
  // If your file is assets/questions.json (as we discussed)
  final jsonStr = await rootBundle.loadString('questions/questions.json');
  return json.decode(jsonStr) as Map<String, dynamic>;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Phone One Lie',
      home: const QuestionsDebugPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuestionsDebugPage extends StatefulWidget {
  const QuestionsDebugPage({super.key});

  @override
  State<QuestionsDebugPage> createState() => _QuestionsDebugPageState();
}

class _QuestionsDebugPageState extends State<QuestionsDebugPage> {
  late Future<Map<String, dynamic>> _future;

  @override
  void initState() {
    super.initState();
    _future = loadQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Questions Test')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final data = snapshot.data!;
          final firstCategoryId = data['categories'][0]['id'];

          return Center(
            child: Text(
              'Loaded ✅ First category: $firstCategoryId',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
