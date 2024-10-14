import 'package:flutter/material.dart';
import 'package:noise_battle/models/player.model.dart';

class HeaderPlayer extends StatelessWidget {
  final Player player;
  final int time;
  const HeaderPlayer({super.key, required this.player, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 62),
          Text(player.name,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SCORE ${player.score.toStringAsFixed(2)}',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
              Text('TIME: $time s',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
            ],
          ),
 
          const SizedBox(height: 30),
        ]);
  }
}
