import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/active_stop_widget.dart';
import 'package:indeoendent_tourist_app_main/during_trip/non_active_stop_widget.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';

class StopWidget extends StatelessWidget {
  final Stop stop;

  const StopWidget({
    super.key,
    required this.stop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        stop.isActive ? ActiveStopWidget(stop) : NonActiveStopWidget(stop),
      ],
    );
  }
}
