import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: HomePage(),
    ),
  ));
}
