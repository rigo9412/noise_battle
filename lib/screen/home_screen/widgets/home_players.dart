import 'package:flutter/material.dart';
import 'package:noise_battle/common/routes.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/widgets/action_button.dart';
import 'package:noise_battle/widgets/list_players.dart';
import 'package:provider/provider.dart';

class HomePlayers extends StatefulWidget {
 
  const HomePlayers({super.key});

  @override
  State<HomePlayers> createState() => _HomePlayersState();
}

class _HomePlayersState extends State<HomePlayers>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds:2),
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
                 ListPlayers(players: context.watch<GameProvider>().game.players.toList(), disabledDelete: true),
                 const SizedBox(height: 52),
                 context.watch<GameProvider>().game.players.length > 1
                    ? ActionButton(
                        title: 'Start Competition 👏',
                        color: Theme.of(context).colorScheme.secondary,
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.game);
                        })
                    : const SizedBox(height: 52),
                context.watch<GameProvider>().game.players.length < 2
                    ? const Text(
                        "You need at least 2 HomePlayers to start a game",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(height: 52),
                  
                        
              ],
            )));
  }
}
