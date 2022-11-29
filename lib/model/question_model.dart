// ignore_for_file: null_check_always_fails, import_of_legacy_library_into_null_safe

import 'package:equatable/equatable.dart';

class Question extends Equatable {
  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> answers;

  const Question({
    required this.category,
    required this.difficulty,
    required this.question,
    required this.correctAnswer,
    required this.answers,
  });

  @override
  List<Object> get props => [
        category,
        difficulty,
        question,
        correctAnswer,
        answers,
      ];

  factory Question.fromMap(Map<String, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) return null!;
    return Question(
      category: map['category'] ?? '',
      difficulty: map['difficulty'] ?? '',
      question: map['question'] ?? '',
      correctAnswer: map['correct_answer'] ?? '',
      answers: List<String>.from(map['incorrect_answers'] ?? [])
        ..add(map['correct_answer'] ?? '')
        ..shuffle(),
    );
  }
}