import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';

class PersonalityCard extends StatelessWidget {
  const PersonalityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalController globalController = Get.find<GlobalController>();
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '${globalController.personalityModels[globalController.currentPersonalityType.value].personalityType}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${globalController.personalityModels[globalController.currentPersonalityType.value].meditatorType}',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${globalController.personalityModels[globalController.currentPersonalityType.value].fullForm}',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${globalController.personalityModels[globalController.currentPersonalityType.value].desc}',
              style: TextStyle(
                fontSize: 12,
              ),
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
