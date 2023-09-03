import 'package:flutter/material.dart';

class RightSubMenu extends StatelessWidget {
  const RightSubMenu({
    super.key,
    required this.tripDestination,
    required this.tripDate,
  });

  final String tripDestination;
  final String tripDate;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
              child: Text("Drawer Header")
          ),
          ListTile(
            title: const Text("Account Settings"),
            onTap: (){},
          ),
          ListTile(
            title: const Text("Info and Safety"),
            onTap: (){},
          ),
          ListTile(
            title: const Text("Rate Us"),
            onTap: (){},
          ),
          ListTile(
            title: const Text("Share This App"),
            onTap: (){},
          ),
          ListTile(
            title: const Text("Feedback Form"),
            onTap: (){},
          )
        ],
      ),
    );
  }
}

class LeftSubMenu extends StatelessWidget {
  const LeftSubMenu({
    super.key,
    required this.username,
    required this.email,
  });

  final String username;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  email,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle home menu item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle settings menu item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout menu item tap
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
