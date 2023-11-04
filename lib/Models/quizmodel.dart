class QuizModel {
  String question;
  List<String> options;

  Map<int, int> scores;

  QuizModel({
    required this.question,
    required this.options,
    required this.scores,
  });
}
