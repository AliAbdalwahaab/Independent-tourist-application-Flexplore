import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';

class Trip {
  const Trip({
    required this.name,
    required this.imageName,
    required this.review,
    required this.money,
    required this.time,
    required this.era,
    required this.numberOfStops,
    required this.stops,
  });
  final String name;
  final String imageName;
  final int review;
  final double money;
  final int time;
  final String era;
  final int numberOfStops;
  final List<Stop> stops;
}
