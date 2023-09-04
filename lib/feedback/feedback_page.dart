import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/feedback/rating_stars.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Trip Feedback',
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(239, 28, 27, 27),
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          toolbarHeight: 120,
        ),
        //INTFINTIY HEIGHT
        body: SizedBox(height: double.infinity, child: RatingStars()),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 16),
                  child: Text(
                    'SKIP FEEDBACK',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 16),
                  child: Text(
                    'SUBMIT FEEDBACK',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
