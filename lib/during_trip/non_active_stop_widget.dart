import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';

class NonActiveStopWidget extends StatelessWidget {
  final Stop stop;
  const NonActiveStopWidget(this.stop, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        children: [
          Container(
            height: 20.0,
            width: 20.0,
            decoration: !stop.isFinished
                ? BoxDecoration(
                    color: const Color(0xFF19a7ce), //const Color(0xff19a7ce),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.white))
                : BoxDecoration(
                    color: const Color.fromARGB(255, 217, 237, 240), //const Color(0xff19a7ce),
                    borderRadius: BorderRadius.circular(20),
                  ),
          ),
          const SizedBox(
            height: 40,
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stop.name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                "${stop.distance} Km Away.",
                style: const TextStyle(
                    color: Color.fromARGB(222, 255, 255, 255), fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          !stop.isFinished
              ? const Icon(Icons.edit, color: Colors.white, size: 20)
              : const Icon(null),
        ],
      ),
    );
  }
}
