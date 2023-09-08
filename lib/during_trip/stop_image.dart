import 'package:flutter/material.dart';

class StopImage extends StatefulWidget {
  const StopImage({required this.image, super.key});

  final String image;

  @override
  State<StopImage> createState() => _StopImageState();
}

class _StopImageState extends State<StopImage> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(200, 103, 197, 240),
            Color.fromARGB(160, 255, 255, 255),
            Color.fromARGB(200, 103, 197, 240)
          ],
          stops: [0.0, 0.5, 1.0],
        ).createShader(bounds);
      },
      child: Image.asset(
        widget.image, // Replace with your image URL
        width: double.infinity, // Adjust the width as needed
        height: 200, // Adjust the height as needed
        fit: BoxFit.cover,
      ),
    );
  }
}
