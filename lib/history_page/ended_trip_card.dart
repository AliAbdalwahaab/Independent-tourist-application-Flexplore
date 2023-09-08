import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indeoendent_tourist_app_main/history_page/ended_trip.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';

class EndedTripCard extends StatelessWidget {
  const EndedTripCard({required this.endedTrip, super.key});
  final EndedTrip endedTrip;

  @override
  Widget build(BuildContext context) {
    Icon filledStar = const Icon(
      Icons.star,
      color: Color.fromRGBO(199, 179, 0, 0.953),
    );
    Icon nonFilledStar = const Icon(
      Icons.star_border,
      color: Color.fromRGBO(199, 179, 0, 0.953),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white, width: 2),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            DestinationPhoto(imageName: endedTrip.image, text: endedTrip.name),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.blue,
              // ignore: prefer_const_constructors
              child: Row(children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.access_time),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${endedTrip.time} min",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(Icons.attach_money),
                        Text(
                          "${endedTrip.money} USD",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.directions_run),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${endedTrip.distance} Km",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.location_on),
                        Text(
                          "${endedTrip.numberOfStops} Stops",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width:
                      1.2, // Adjust the width to control the thickness of the line
                  height:
                      50, // Adjust the height to control the height of the line
                  color: const Color.fromARGB(255, 255, 255,
                      255), // You can set the color to your preference
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ), // Adjust spacing as needed
                ),
                Column(
                  children: [
                    Text('Your Rating',
                        style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        endedTrip.rating >= 1 ? filledStar : nonFilledStar,
                        endedTrip.rating >= 2 ? filledStar : nonFilledStar,
                        endedTrip.rating >= 3 ? filledStar : nonFilledStar,
                        endedTrip.rating >= 4 ? filledStar : nonFilledStar,
                        endedTrip.rating >= 5 ? filledStar : nonFilledStar,
                      ],
                    ),
                  ],
                )
              ]),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
