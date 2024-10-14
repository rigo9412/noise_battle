import 'package:flutter/material.dart';
import 'package:noise_battle/models/player.model.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:provider/provider.dart';

class ItemPlayer extends StatelessWidget {
  final Player player;
  final bool disabledDelete;
  const ItemPlayer({super.key, required this.player, required this.disabledDelete});



  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shadowColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
            
              title: Text(player.name == '' ? 'Anonymous' : player.name),
              subtitle: Text('Score: ${player.score.toStringAsFixed(2)} pts'),
              trailing: disabledDelete ? IconButton(onPressed: () {
                 Provider.of<GameProvider>(context, listen: false).removePlayer(player.id);
              }, icon: Icon(Icons.delete)): const SizedBox(height: 0),
            ),
           
          ],
        ),
      ),
    );
  }
}
