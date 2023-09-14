import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/history_page/ended_trip.dart';
import 'package:indeoendent_tourist_app_main/history_page/ended_trip_card.dart';
import 'package:indeoendent_tourist_app_main/history_page/final_ended_trips.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<EndedTrip> endedTrips = historyTrips;

  List<EndedTrip> returnedEndedTrip = [];

  @override
  Widget build(BuildContext context) {
    returnedEndedTrip = checkShowDate(endedTrips);
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
                        endedTrip: returnedEndedTrip[index],
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

List<EndedTrip> checkShowDate(List<EndedTrip> endedTrips) {
  if (endedTrips.isEmpty) {
    return endedTrips;
  } else if (endedTrips.length == 1) {
    endedTrips[0].showDate = true;
    return endedTrips;
  } else {
    for (int i = 0; i < endedTrips.length - 1; i++) {
      if (endedTrips[i].date.day != endedTrips[i + 1].date.day) {
        endedTrips[i].showDate = true;
      } else {
        endedTrips[i].showDate = false;
      }
    }
    endedTrips[endedTrips.length - 1].showDate = true;
  }
  return endedTrips.reversed.toList();
}
