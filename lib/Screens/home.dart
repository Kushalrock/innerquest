import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Screens/extensions.dart';
import 'package:innerquest/Screens/profile.dart';
import 'package:innerquest/Screens/widgets/journallingcard.dart';
import 'package:innerquest/Screens/widgets/moodcard.dart';
import 'package:innerquest/Screens/widgets/personalitycard.dart';
import 'package:innerquest/Screens/widgets/suggestedsounds.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController globalController = Get.find<GlobalController>();

  bool isJournaling = false;

  void startJournaling() {
    setState(() {
      isJournaling = true;
    });
  }

  void finishJournaling() {
    globalController.moodPoints.value += 10;
    setState(() {
      isJournaling = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InnerQuest'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            icon: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.person_2_outlined),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ExtensionsPage(),
                ),
              );
            },
            icon: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.card_membership),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    'Hi, ${globalController.name.value}!',
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            PersonalityCard(),
            isJournaling
                ? JournalingContent(finishJournaling)
                : MoodCard(
                    startJournaling: startJournaling,
                  ),
            SuggestedSounds(),
          ],
        ),
      ),
    );
  }
}
