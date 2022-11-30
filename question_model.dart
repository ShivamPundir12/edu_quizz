// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: null_check_always_fails, import_of_legacy_library_into_null_safe

import 'dart:convert';

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
  List<Object> get props {
    return [
      category,
      difficulty,
      question,
      correctAnswer,
      answers,
    ];
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      category: map['category'] as String,
      difficulty: map['difficulty'] as String,
      question: map['question'] as String,
      correctAnswer: map['correctAnswer'] as String,
      answers: List<String>.from((map['answers'] as List<String>),
    ));
  }

  Question copyWith({
    String? category,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? answers,
  }) {
    return Question(
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      question: question ?? this.question,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answers: answers ?? this.answers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'difficulty': difficulty,
      'question': question,
      'correctAnswer': correctAnswer,
      'answers': answers,
    };
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
