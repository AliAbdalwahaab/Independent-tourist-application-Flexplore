import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
import 'package:indeoendent_tourist_app_main/trip_info.dart';
//feedpack page
import 'package:indeoendent_tourist_app_main/feedback/feedback_page.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FeedBack(),
  ));
//  runApp(const TripInfo());
}
