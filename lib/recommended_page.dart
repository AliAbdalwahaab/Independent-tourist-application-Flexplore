import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hello World!!!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "DUMMY DATA",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 3,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 5,
                        era: 'islamic era',
                        stops: 5,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 4,
                        era: 'islamic era',
                        stops: 4,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 2,
                        era: 'islamic era',
                        stops: 3,
                      ),
                      TripCard(
                        text: "Elmoezz",
                        imageName: 'elmoezz.jpg',
                        time: 120,
                        money: 120,
                        review: 5,
                        era: 'islamic era',
                        stops: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
