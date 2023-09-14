import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';
import 'package:indeoendent_tourist_app_main/trip_info.dart';
//feedpack page
import 'package:indeoendent_tourist_app_main/feedback/feedback_page.dart';


import 'login_page.dart'; // Login page -- Fares
import 'signup_page.dart'; // Sign up page -- Fares

/* void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
  
//  runApp(const TripInfo());
}
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
