import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop_image.dart';

class ActiveStopWidget extends StatelessWidget {
  final Stop stop;
  final void Function() skipStop;

  const ActiveStopWidget(
    this.stop, {
    super.key, 
    required this.skipStop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Background Image
            StopImage(
              image: stop.image,
            ), // Replace StopImage with your actual widget

            // Overlay the information
            Positioned(
              top: 140,
              left: 10,
              right: 10,
              bottom: 0,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "NEXT STOP",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        stop.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Transform.flip(
                                flipX: true,
                                child: Transform.rotate(
                                  angle: 270 * math.pi / 180,
                                  child: const Icon(
                                    FontAwesomeIcons.shoePrints,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '${stop.distance}  m',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.timer,
                                  color: Colors.white, size: 20),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${stop.avgTime}  mins',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ElevatedButton.icon(
            onPressed:skipStop,
            icon: const Icon(Icons.play_arrow),
            label: Ink(
              child: const Text("NEXT STOP"),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(
                const Color(0xFF146c94),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF146c94),
              borderRadius: BorderRadius.circular(15),
            ),
            width: 500,
            constraints: const BoxConstraints(minHeight: 100),
            child: Card(
              color: const Color(0xFF146c94),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.expand_more,
                        color: Colors.white, size: 24),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: stop.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          TextSpan(
                            text:
                                ":   ${stop.description} oafherionvjklerwnvjowter hvopwhnetrvklnerovnipetrvnpijerfnvkoerfhvoiervoiervoierjvoerp",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
