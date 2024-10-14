import 'package:flutter/material.dart';
import 'package:noise_battle/common/routes.dart';
import 'package:noise_battle/models/player.model.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/widgets/action_button.dart';
import 'package:noise_battle/widgets/list_players.dart';
import 'package:provider/provider.dart';

class OtherPlayer extends StatefulWidget {
  final Player winner;
  const OtherPlayer({super.key, required this.winner});

  @override
  State<OtherPlayer> createState() => _OtherPlayerState();
}

class _OtherPlayerState extends State<OtherPlayer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, 1.5),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  ));

  late final Animation<double> _opacity = Tween<double>(begin: 0, end: 1)
      .animate(CurvedAnimation(
          parent: _controller,
          curve: Interval(0.5, 1),
          reverseCurve: Interval(0.5, 1.0)));

  @override
  void initState() {
    super.initState();

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _opacity,
        child: SlideTransition(
            position: _offsetAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ListPlayers(
                  players: context.watch<GameProvider>().game.players.where((player) => player.id != widget.winner.id).toList(),
                  disabledDelete: false,

                  ),
                 ActionButton(
                    title: "End Competition",
                    color: Theme.of(context).colorScheme.secondary,
                    textColor: Colors.black,
                    onPressed: () {                      
                         Navigator.of(context)
                            .pushNamedAndRemoveUntil(Routes.home, (Route<dynamic> route) => false);
                    })
                  
                        
              ],
            )));
  }
}
