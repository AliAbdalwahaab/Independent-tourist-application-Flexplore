import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/history_page/ended_trip.dart';
import 'package:indeoendent_tourist_app_main/history_page/ended_trip_card.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<EndedTrip> endedTrips = [
    EndedTrip(
      name: "ELMOEZ",
      image: "elmoezz.jpg",
      time: 5,
      money: 5,
      distance: 4,
      numberOfStops: 5,
      rating: 3,
      date: DateTime.now(),
    ),
    EndedTrip(
      name: "ELMOEZ",
      image: "elmoezz.jpg",
      time: 5,
      money: 5,
      distance: 4,
      numberOfStops: 5,
      rating: 4,
      date: DateTime.now(),
    ),
    // Add more EndedTrip objects as needed.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: endedTrips.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EndedTripCard(
                        endedTrip: endedTrips[index],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
