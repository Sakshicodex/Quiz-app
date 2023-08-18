import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/m.png',
          ),
          Text(
            'Quest for Bennett Brilliance!',
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Color.fromARGB(255, 5, 6, 94),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color.fromARGB(255, 120, 117, 117)),
              foregroundColor: Color.fromARGB(255, 127, 212, 233),
              backgroundColor: Color.fromARGB(255, 5, 6, 94),
            ),
            icon: const Icon(Icons.access_time_filled_rounded),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
