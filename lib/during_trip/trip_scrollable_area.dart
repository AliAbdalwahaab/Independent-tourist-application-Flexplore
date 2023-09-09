import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/DuringTrip.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop_widget.dart';
import 'package:indeoendent_tourist_app_main/models/trips.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:indeoendent_tourist_app_main/trip_info.dart';

class TripScrollableArea extends StatefulWidget {
  const TripScrollableArea({super.key, required this.tripNum});

  final int tripNum;

  @override
  State<TripScrollableArea> createState() => _TripScrollableAreaState();
}

class _TripScrollableAreaState extends State<TripScrollableArea> {
  int? tripNum;
  late List<Stop> items;

  @override
  void initState() {
    super.initState();
    tripNum = widget.tripNum;
    items = Stop.getTripStops(tripNum);
    // items=getEditedTrip();
    //this items list contains only the stops that were not removed by user
    //get the edited trip from Trip Info page instead from the 'database' 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF19a7ce),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      const Positioned(
                          left: 25,
                          child: DottedLine(
                            direction: Axis.vertical,
                            dashColor: Color.fromARGB(255, 255, 255, 255),
                            lineLength: 100,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StopWidget(
                            stop: items[index],
                            skipStop: skipStop,
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void skipStop() {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        if (items[i].isActive) {
          items[i].isActive = false;
          items[i].isFinished = true;
          DuringTripPage.totalDistanceWalked += items[i].distance;
          i != items.length - 1 ? items[i + 1].isActive = true : null;
          break;
        }
      }
    });
  }
}
