import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/account_setting/accountSetting.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
//feedpack page

import 'login_page.dart'; // Login page -- Fares
// Sign up page -- Fares

/* void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
  
//  runApp(const TripInfo());
}
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
