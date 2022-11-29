import '../model/question_model.dart';
import 'difficulty.dart';

abstract class BaseQuizRepository {
  Future<List<Question>> getQuestions({
   required int numQuestions,
   required int categoryId,
   required Difficulty difficulty,
  });
}