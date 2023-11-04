import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Controllers/quizcontroller.dart';
import 'package:innerquest/Screens/home.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.put(QuizController());
    final GlobalController globalController = Get.find<GlobalController>();
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quizController.currentIndex.value >=
                  quizController.quizmodels.length
              ? [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Your Personality Type is: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          softWrap: true,
                        ),
                        Text(
                          globalController
                              .personalityModels[
                                  globalController.currentPersonalityType.value]
                              .personalityType,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(50.0),
                          child: TextField(
                            controller: textEditingController,
                            onChanged: (val) {
                              globalController.name.value =
                                  textEditingController.text;
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 102, 220, 220),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            'Start Journey',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]
              : [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => Text(
                        quizController
                            .quizmodels[quizController.currentIndex.value]
                            .question,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Obx(
                    () => Column(
                      children: quizController
                          .quizmodels[quizController.currentIndex.value].options
                          .map((e) => GestureDetector(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  margin: EdgeInsets.all(15.0),
                                ),
                                onTap: () {
                                  int? temp = quizController
                                          .quizmodels[
                                              quizController.currentIndex.value]
                                          .scores[
                                      quizController
                                          .quizmodels[
                                              quizController.currentIndex.value]
                                          .options
                                          .indexWhere(
                                              (element) => element == e)];
                                  if (temp != null) {
                                    quizController.score.value += temp;
                                    quizController.currentIndex += 1;
                                    if (quizController.currentIndex.value ==
                                        quizController.quizmodels.length) {
                                      globalController
                                              .currentPersonalityType.value =
                                          quizController.getMeditationType();
                                    }
                                  }
                                },
                              ))
                          .toList(),
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
