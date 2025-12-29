import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> loadQuestions() async {
  final jsonStr = await rootBundle.loadString('questions/questions.json');
  return json.decode(jsonStr) as Map<String, dynamic>;
}

