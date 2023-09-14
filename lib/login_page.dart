import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';
import 'package:indeoendent_tourist_app_main/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color(0xffafd3e2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Username'),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            const Text('Password'),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            ElevatedButton(
              child: const Text('Signup'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              style: ElevatedButton.styleFrom(primary: const Color(0xff19a7ce)),
            ),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                _onLoginPressed(context);
              },
              style: ElevatedButton.styleFrom(primary: const Color(0xff19a7ce)),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff6f1f1),
    );
  }

  void _onLoginPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
