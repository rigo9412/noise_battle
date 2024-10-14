import 'package:flutter/material.dart';
import 'package:noise_battle/models/player.model.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/screen/winner_screen/widgets/other_players.dart';
import 'package:noise_battle/screen/winner_screen/widgets/winner_player.dart';
import 'package:provider/provider.dart';
 

class WinnerScreen extends StatefulWidget {
  const WinnerScreen({super.key});

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
   late Player _winner;
  _WinnerScreenState();

  @override
  void initState() {
    super.initState();
    _winner = Provider.of<GameProvider>(context, listen: false).getWinner();
  }

 
 
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
         
          padding: EdgeInsets.symmetric(horizontal: 52),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             
                WinnerPlayer(winner: _winner),
                OtherPlayer(winner: _winner)
                
              ]),
        ),
      );
}
