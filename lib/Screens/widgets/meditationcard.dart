import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class MeditationCard extends StatelessWidget {
  MeditationCard({super.key, required this.info});
  Map<String, String> info;
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF66DCCC), // RGB(102, 220, 220)
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('${info["name"]}',
                style: const TextStyle(fontSize: 20, color: Colors.white)),
            subtitle: Text('${info["subtitle"]}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                )),
          ),
          GestureDetector(
            onTap: () {
              assetsAudioPlayer.open(Audio(info["path"]!), autoStart: true);
            },
            child: Icon(
              Icons.play_circle_filled,
              size: 48,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
