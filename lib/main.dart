import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/DuringTrip.dart';
import 'package:indeoendent_tourist_app_main/explore_page/explore_page.dart';
import 'package:indeoendent_tourist_app_main/feedback/feedback_page.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';
import 'package:indeoendent_tourist_app_main/trip_info.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: ExplorePage()),
  ));
//  runApp(const TripInfo());
}
