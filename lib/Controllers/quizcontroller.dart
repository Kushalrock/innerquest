import 'package:get/state_manager.dart';
import 'package:innerquest/Models/quizmodel.dart';

class QuizController extends GetxController {
  List<QuizModel> quizmodels = [
    QuizModel(
      question: "How do you usually react to stress or challenging situations?",
      options: [
        "I analyze the situation, plan a strategy, and stay calm",
        "I seek emotional support from friends and loved ones",
        "I try to distract myself with activities or hobbies",
        "I tend to feel overwhelmed and anxious"
      ],
      scores: {
        0: 2,
        1: 1,
        2: -1,
        3: -2,
      },
    ),
    QuizModel(
      question:
          "How would you describe your thought process during meditation?",
      options: [
        "I love exploring complex ideas and concepts. (+2)",
        "I find it easier to meditate with guided instructions and affirmations. (+1)",
        "I struggle with a busy mind and often get distracted. (-1)",
        "I can't seem to quiet my thoughts and focus at all. (-2)",
      ],
      scores: {
        0: 2,
        1: 1,
        2: -1,
        3: -2,
      },
    ),
    QuizModel(
      question: "How do you approach setting goals in life?",
      options: [
        "I set clear, detailed goals and enjoy working towards them. (+2)",
        "I prefer setting general goals and adapting as I go. (+1)",
        "I have a hard time committing to long-term goals. (-1)",
        "I don't like making plans or setting goals. (-2)",
      ],
      scores: {
        0: 2,
        1: 1,
        2: -1,
        3: -2,
      },
    ),
    QuizModel(
      question: "How do you feel about social interactions?",
      options: [
        "I enjoy deep one-on-one conversations more than group settings. (+2)",
        "I like spending time with friends and being part of social gatherings. (+1)",
        "I find socializing draining and need time alone to recharge. (-1)",
        "I'm not a fan of social interactions at all. (-2)",
      ],
      scores: {
        0: 2,
        1: 1,
        2: -1,
        3: -2,
      },
    ),
    QuizModel(
      question: "What is your preferred way to relax?",
      options: [
        "I like reading, researching, or engaging in intellectual pursuits. (+2)",
        "I enjoy watching movies, listening to music, or doing creative activities. (+1)",
        "I find relaxation in nature, walks, or physical activities. (-1)",
        "I struggle to relax and often feel restless. (-2)",
      ],
      scores: {
        0: 2,
        1: 1,
        2: -1,
        3: -2,
      },
    )
  ];
  var currentIndex = 0.obs;

  var score = 0.obs;

  int getMeditationType() {
    if (score.value <= 0) {
      return 3;
    } else if (score.value <= 3) {
      return 2;
    } else if (score.value <= 7) {
      return 1;
    } else {
      return 0;
    }
  }
}
