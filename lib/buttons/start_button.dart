import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: const Icon(Icons.play_arrow),
      label: Text(
        'Start Trip',
        style: GoogleFonts.lato(
          fontSize: 22,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.all(20.0),
      ),
    );
  }
}
