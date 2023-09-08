//endedtrip is a class called EndedTrip with attributes
//name, image, time, money, distance, number of stops and rating

class EndedTrip {
  final String name;
  final String image;
  final int time;
  final double money;
  final double distance;
  final int numberOfStops;
  final int rating;

  EndedTrip(
      {required this.name,
      required this.image,
      required this.time,
      required this.money,
      required this.distance,
      required this.numberOfStops,
      required this.rating});
}
