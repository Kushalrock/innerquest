import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Screens/home.dart';
import 'package:innerquest/Screens/quiz.dart';
import 'package:innerquest/Themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalController globalController = Get.put(GlobalController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: QuizPage(),
    );
  }
}
