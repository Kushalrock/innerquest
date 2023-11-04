import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Screens/widgets/meditationsection.dart';

class SuggestedSounds extends StatelessWidget {
  SuggestedSounds({super.key});
  final GlobalController globalController = Get.find<GlobalController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'For You',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: globalController.meditationPacks
                  .asMap()
                  .entries
                  .map((e) => MeditationSection(index: e.key))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
