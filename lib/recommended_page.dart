import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  TripCard(
                    text: "Elmoezz",
                    imageName: 'elmoezz.jpg',
                    time: 120,
                    money: 120,
                    review: 2,
                    era: 'islamic era',
                    stops: 4,
                    tripNum: 1,
                  ),
                  TripCard(
                    text: "Elmoezz",
                    imageName: 'elmoezz.jpg',
                    time: 120,
                    money: 120,
                    review: 4,
                    era: 'islamic era',
                    stops: 4,
                    tripNum: 2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
