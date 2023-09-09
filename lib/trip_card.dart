import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/DuringTrip.dart';

class TripCard extends StatelessWidget {
  const TripCard(
      {required this.text,
      required this.imageName,
      required this.review,
      required this.money,
      required this.time,
      required this.era,
      required this.stops,
      super.key, required this.tripNum});

  final String text;
  final String imageName;
  final int review;
  final double money;
  final int time;
  final String era;
  final int stops;
  final int tripNum;

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




    return
      GestureDetector(
          onTap: () {
            // Navigate to a new screen when the widget is tapped
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>  DuringTripPage(tripNum),
              ),
            );
          },

        child: Card(
        child: Column(
          children: [
            DestinationPhoto(imageName: imageName, text: text),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.blue,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$time minutes',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      era,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "Overall user review",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '~ \$$money',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      '$stops stops',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        review >= 1 ? filledStar : nonFilledStar,
                        review >= 2 ? filledStar : nonFilledStar,
                        review >= 3 ? filledStar : nonFilledStar,
                        review >= 4 ? filledStar : nonFilledStar,
                        review >= 5 ? filledStar : nonFilledStar,
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
    ),
      );
  }
}

class DestinationPhoto extends StatelessWidget {
  const DestinationPhoto({
    super.key,
    required this.imageName,
    required this.text,
  });

  final String imageName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 500,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/$imageName',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
