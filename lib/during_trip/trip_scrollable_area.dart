import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop_widget.dart';

class TripScrollableArea extends StatefulWidget {
  const TripScrollableArea({super.key});

  @override
  State<TripScrollableArea> createState() => _TripScrollableAreaState();
}

class _TripScrollableAreaState extends State<TripScrollableArea> {
  List<Stop> items = List<Stop>.generate(
    20,
    (index) => Stop(
        name: 'Stop $index',
        avgTime: 10,
        distance: 100,
        isFinished: index == 0,
        isActive: index == 1 ? true : false,
        description: "This is a description"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF19a7ce),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StopWidget(stop: items[index]),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
