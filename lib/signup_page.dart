import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        backgroundColor: Color(0xffafd3e2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Username'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            Text('Password'),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            Text('Name'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            Text('Email'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            Text('Age'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Age',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            Text('Country'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Country',
                labelStyle: TextStyle(color: Color(0xff146c94)),
              ),
            ),
            ElevatedButton(
              child: Text('Signup'),
              onPressed: () {
                _onSignupPressed(context);
              },
              style: ElevatedButton.styleFrom(primary: Color(0xff19a7ce)),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xfff6f1f1),
    );
  }

  void _onSignupPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
