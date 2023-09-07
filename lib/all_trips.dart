import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/trip.dart';

Map<String, Trip> allAppTrips = {
  'elmoezz': Trip(
    name: 'Elmoezz',
    imageName: 'elmoezz.jpg',
    review: 4,
    money: 100,
    time: 3,
    era: 'Islamic',
    numberOfStops: 5,
    stops: [
      Stop(
        name: 'Elmoezz Street',
        avgTime: 1,
        distance: 0,
        isActive: true,
        description:
            'Elmoezz Street is one of the oldest streets in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo',
        isFinished: false,
        image: 'elmoezz.jpg',
        directions: 'https://goo.gl/maps/',
      ),
      Stop(
        name: 'Elmoezz Street',
        avgTime: 1,
        distance: 0,
        isActive: true,
        description:
            'Elmoezz Street is one of the oldest streets in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo',
        isFinished: false,
        image: 'elmoezz.jpg',
        directions: 'https://goo.gl/maps/',
      ),
    ],
  ),
};
