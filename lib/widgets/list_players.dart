import 'package:flutter/material.dart';

import 'package:noise_battle/models/player.model.dart';
import 'package:noise_battle/widgets/item_player.dart';

class ListPlayers extends StatefulWidget {
  final List<Player> players;
  final bool disabledDelete;
  const ListPlayers({super.key, required this.players, required this.disabledDelete});
 

  @override
  State<ListPlayers> createState() => _ListPlayersState();
}

class _ListPlayersState extends State<ListPlayers> {

 
  
  @override
  void initState() {
    super.initState();
    widget.players.sort((a, b) => b.score.compareTo(a.score));
  }

  @override
  Widget build(BuildContext context) {
    return   Column(
            children: widget.players.map((item) {
              return ItemPlayer(player: item, disabledDelete: widget.disabledDelete);
            }).toList()
        );
  }
}
