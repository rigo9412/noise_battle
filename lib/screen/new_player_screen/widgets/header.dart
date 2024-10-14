import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 82),
          const Text('New\nCompetitor',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  height: 0.9,
                  letterSpacing: -5,
                  color: Colors.white)),
          const SizedBox(height: 20),
        ]);
  }
}
