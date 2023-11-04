class MeditationPackModel {
  String name;

  List<Map<String, String>> meditationSounds;

  int cost;

  MeditationPackModel({
    required this.name,
    required this.meditationSounds,
    required this.cost,
  });
}
