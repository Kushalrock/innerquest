import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innerquest/Screens/home.dart';

class ExtensionsPage extends StatelessWidget {
  const ExtensionsPage({super.key});

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
        title: Text('Extensions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Row(
                children: [
                  Text(
                    'Released',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Empathy Journaling',
                  ),
                  subtitle: Text('Write about things you are grateful for'),
                  trailing: CupertinoSwitch(value: true, onChanged: (_) {}),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Pomodoro Timer',
                  ),
                  subtitle: Text('Work for 25 minutes, rest for 5, repeat'),
                  trailing: CupertinoSwitch(value: false, onChanged: (_) {}),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    'Unstable',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Eisenhower Matrix',
                  ),
                  subtitle: Text('4 quadrants focus on what truly matters'),
                  trailing: CupertinoSwitch(value: false, onChanged: (_) {}),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    'In Development',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Personality Insights',
                  ),
                  subtitle: Text('Deep Insights into you. Know Thyself'),
                  trailing: Text("In Development"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
