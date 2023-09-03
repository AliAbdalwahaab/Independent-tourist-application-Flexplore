import 'package:indeoendent_tourist_app_main/models/trips.dart';


class Stop {
  String name;
  double avgTime;
  double distance;
  bool isActive;
  String description;
  bool isFinished;
  Stop(
      {required this.name,
      required this.avgTime,
      required this.distance,
      required this.isActive,
      required this.description,
      required this.isFinished});


   static List<Stop> getTripStops(tripNum){
    final List<Stop> stops = allTrips['trip$tripNum']!;
    return stops;
  }




}
