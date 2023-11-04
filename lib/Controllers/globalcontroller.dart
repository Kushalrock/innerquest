import 'package:get/state_manager.dart';
import 'package:innerquest/Models/meditationpackmodel.dart';
import 'package:innerquest/Models/personalitymodel.dart';

class GlobalController extends GetxController {
  var personalityModels = [
    PersonalityModel(
      personalityType: "INTP",
      fullForm: "Introverted, Intuitive, Thinking, Perceiving",
      desc:
          "You have a strong penchant for intellectual pursuits and love exploring abstract ideas. Deep and analytical thinking is your forte. You often prefer one-on-one conversations to large social gatherings, valuing profound discussions and learning new concepts.",
      meditatorType: "The Analytical Meditator",
    ),
    PersonalityModel(
        personalityType: "ENFP",
        fullForm: "Extraverted, Intuitive, Feeling, Perceiving",
        desc:
            "You're a creative and outgoing individual, guided by your emotions and values. Building authentic connections and thinking outside the box come naturally to you. You're great at forming meaningful relationships and seeking authenticity in your interactions.",
        meditatorType: "The Creative Meditator"),
    PersonalityModel(
      personalityType: "ISFP",
      fullForm: "Introverted, Sensing, Feeling, Perceiving",
      desc:
          "You have a deep appreciation for beauty, emotions, and sensory experiences. Art, music, and nature hold a special place in your heart. Your independence and individuality are important, and you're often seen as a caring and empathetic listener and friend.",
      meditatorType: "The Nature-Connected Meditator",
    ),
    PersonalityModel(
        personalityType: "ISTJ",
        fullForm: "Introverted, Sensing, Thinking, Judging",
        desc:
            "You're known for being dependable, practical, and organized. Structure and routine are your allies, and you excel in roles that demand meticulous attention to detail. Loyalty, responsibility, and traditional values are your strong suits, making you a reliable presence in the lives of those around you.",
        meditatorType: "The Structured Meditator"),
  ];

  var currentPersonalityType = 0.obs;

  var name = "".obs;

  var moodPoints = 50.obs;

  var meditationPacks = [
    MeditationPackModel(
      name: 'Mindfulness Meditation',
      meditationSounds: [
        {
          "name": "Day 1",
          "subtitle": "Try to focus",
          "path": "assets/sounds/mindfulness/1.mp3"
        },
        {
          "name": "Day 2",
          "subtitle": "Listen to Serenity",
          "path": "assets/sounds/mindfulness/2.mp3"
        },
      ],
      cost: 40,
    ),
    MeditationPackModel(
      name: 'Zen Meditation',
      meditationSounds: [
        {
          "name": "Day 1",
          "subtitle": "Zen Medi - 1",
          "path": "assets/sounds/mindfulness/1.mp3"
        },
        {
          "name": "Day 2",
          "subtitle": "Zen Medi - 2",
          "path": "assets/sounds/mindfulness/2.mp3"
        },
      ],
      cost: 40,
    ),
  ];

  var unlocked = [true, false].obs;
}
