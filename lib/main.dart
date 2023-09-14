import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
