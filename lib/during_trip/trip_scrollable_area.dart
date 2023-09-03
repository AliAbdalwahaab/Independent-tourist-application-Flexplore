import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop_widget.dart';
import 'package:indeoendent_tourist_app_main/models/trips.dart';

class TripScrollableArea extends StatefulWidget {
  const TripScrollableArea({super.key,required this.tripNum});

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
  }





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
