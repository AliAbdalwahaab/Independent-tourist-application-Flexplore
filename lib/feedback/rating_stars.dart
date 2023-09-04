import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _RatingStarsState createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  late List<double> ratings;

  @override
  Widget build(BuildContext context) {
    List<String> questions1 = [
      'Spots',
      'Navigation',
      'Walking Distance',
      'Service',
      'Spots',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
      'Soon.....',
    ];
    ratings = List<double>.filled(questions1.length, 0);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Feedback Page'),
      // ),
      body: ListView.builder(
        itemCount: questions1.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions1[index]),
            trailing: RatingBar.builder(
              initialRating: ratings[index],
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  ratings[index] = rating;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
