import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indeoendent_tourist_app_main/trip.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({required this.trip, super.key, required this.brief});
  final String brief;
  final Trip trip;

  @override
  Widget build(BuildContext context) {
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
            DestinationPhoto(imageName: trip.imageName, text: trip.name),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.blue,
              child: Row(children: [
                SizedBox(
                    width: 180,
                    child: Text(
                      brief,
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFF146c94),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text("Read more"),
                              SizedBox(width: 10),
                              Icon(Icons.menu),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 53, 113, 96),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text("Start This Trip"),
                              SizedBox(width: 10),
                              Icon(Icons.keyboard_arrow_right_sharp),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
