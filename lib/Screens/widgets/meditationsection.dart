import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:innerquest/Controllers/globalcontroller.dart';
import 'package:innerquest/Screens/widgets/meditationcard.dart';

class MeditationSection extends StatelessWidget {
  MeditationSection({super.key, required this.index});
  final GlobalController globalController = Get.find<GlobalController>();
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '${globalController.meditationPacks[index].name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          globalController.unlocked[index] == false
              ? GestureDetector(
                  onLongPress: () {
                    globalController.moodPoints.value -=
                        globalController.meditationPacks[index].cost;
                    globalController.unlocked[index] = true;
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: globalController.unlocked[index]
                            ? Colors.green
                            : Colors.red,
                        width: 8,
                      ),
                    ),
                    child: Center(
                      child: globalController.unlocked[index]
                          ? Icon(
                              Icons.lock_open,
                              size: 60,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.lock,
                              size: 60,
                              color: Colors.red,
                            ),
                    ),
                  ),
                )
              : Container(
                  height: 140,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int ind) {
                      Map<String, String> info = globalController
                          .meditationPacks[index].meditationSounds[ind];
                      return MeditationCard(
                        info: info,
                      );
                    },
                    itemCount: 2,
                    itemWidth: 300.0,
                    layout: SwiperLayout.STACK,
                  ),
                )
        ],
      ),
    );
  }
}
