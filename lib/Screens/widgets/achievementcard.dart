import 'package:flutter/material.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCompleted = true;
    int currentProgress = 1;
    int totalProgress = 1;
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'First Step',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Took the first baby step',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Text('$currentProgress/$totalProgress'),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Points: 10', style: TextStyle(fontSize: 16)),
                  if (isCompleted)
                    Text(
                      'Completed on 04/11/2023',
                    )
                  else
                    SizedBox(),
                ],
              ),
            ),
            if (isCompleted)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 102, 220, 220),
                    ),
                    onPressed: () {},
                    label: Text(
                      'Claim Badge',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    icon: Icon(Icons.badge),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 102, 220, 220),
                    ),
                    onPressed: () {},
                    label: Text(
                      'Claim on Metamask',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    icon: Icon(Icons.wallet),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
