import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Screens/home.dart';
import 'package:innerquest/Screens/widgets/achievementcard.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final GlobalController globalController = Get.find<GlobalController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text('InnerQuest'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_3_rounded,
                    size: 80,
                  ),
                ],
              ),
            ),
            Text(
              '${globalController.name.value}',
              style: GoogleFonts.playfairDisplay(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${globalController.personalityModels[globalController.currentPersonalityType.value].personalityType} traits',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 102, 220, 220),
                ),
                onPressed: () {},
                child: Text(
                  'Retake Personality Quiz',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Achievements',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            AchievementCard()
          ],
        ),
      ),
    );
  }
}
