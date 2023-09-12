import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';
import 'trip_info.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  TripCard(
                    text: getTripName(1),
                    imageName: getTripImageName(1),
                    time: getAvgTimeForTrip(1).toInt(),
                    money: 120,
                    review: 2,
                    era: 'islamic era',
                    stops: StopsComponent.getStops(1).length,
                    tripNum: 1,
                  ),
                  TripCard(
                    text: getTripName(2),
                    imageName: getTripImageName(2),
                    time: getAvgTimeForTrip(2).toInt(),
                    money: 120,
                    review: 4,
                    era: 'islamic era',
                    stops: StopsComponent.getStops(2).length,
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

  static double getAvgTimeForTrip(int tripNum) {
    List<Stop> stops = StopsComponent.getStops(tripNum);
    double res = 0;
    for (Stop stop in stops) {
      res += stop.avgTime;
    }
    return res;
  }

  static String getTripName(int tripNum) {
    List<Stop> stops = StopsComponent.getStops(tripNum);
    return stops[0].name;
  }

  static String getTripImageName(int tripNum) {
    List<Stop> stops = StopsComponent.getStops(tripNum);
    return stops[0].image;
  }
}
