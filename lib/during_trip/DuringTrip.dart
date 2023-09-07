import 'dart:async';
import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/trip_scrollable_area.dart';
import 'package:indeoendent_tourist_app_main/feedback/feedback_page.dart';

class DuringTripPage extends StatefulWidget {
  static double totalDistanceWalked = 0.0;
  const DuringTripPage({super.key});

  @override
  _DuringTripPageState createState() => _DuringTripPageState();
}

class _DuringTripPageState extends State<DuringTripPage> {
  late Timer _timer;
  int _secondsElapsed = 0;
  //bool _tripStarted = false;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        _secondsElapsed++;
      });
    });
  }

  void stopTimer() {
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: duringTripPageAppBar(),
        body: const TripScrollableArea(
          tripNum: 1,
        ),
        drawer: const MyDrawer(),
        bottomNavigationBar: duringTripPageBottomAppBar(),
        backgroundColor: const Color.fromARGB(255, 70, 178, 228),
      ),
    );
  }

  BottomAppBar duringTripPageBottomAppBar() {
    return BottomAppBar(
      child: Container(
        color: Colors.blue,
        height: 60,
        child: Row(
          children: [
            const Spacer(),
            const Icon(
              Icons.directions_walk,
              color: Colors.white,
            ),
            Text(
              "${double.parse(DuringTripPage.totalDistanceWalked.toStringAsFixed(1))} M",
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            const Icon(
              Icons.access_time_filled,
              color: Colors.white,
            ),
            Text(
              formatTime(_secondsElapsed),
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.red)))),
              onPressed: () {
                stopTimer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const FeedBack()
                  )
                );
              },
              child: const Text("End Trip"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  AppBar duringTripPageAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
        height: 35,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          )
        ]),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search in Trip",
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  String formatTime(int seconds) {
    final int hours = seconds ~/ 3600;
    final int minutes = (seconds % 3600) ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '$hours : ${minutes.toString().padLeft(2, '0')} : ${remainingSeconds.toString().padLeft(2, '0')}';
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Divider(),
          const Divider(),
          const Divider(),
          ListTile(
            title: const Text('Report a Problem'),
            onTap: () {
              // Add your Report a Problem functionality here
              // Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
