import 'package:flutter/material.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:provider/provider.dart';
 

class LogoTitle extends StatefulWidget {
  const LogoTitle({super.key});

  @override
  State<LogoTitle> createState() => _LogoTitleState();
}

class _LogoTitleState extends State<LogoTitle>  with SingleTickerProviderStateMixin  {
    late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

   late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin:  const Offset(0.0, -0.5),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  ));
late final Animation<double> _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
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
        child:SlideTransition(
      position: _offsetAnimation,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 120),
          const Text("👏", style: TextStyle(fontSize: 100,height: 00.1)),
          const Text('Noise',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: -5)),
          Text('Battle',
              style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).colorScheme.secondary,
                  height: 0.1,
                  letterSpacing: 1)),
          const SizedBox(height: 20),
          Text('Play a game of Clap Winner. Competitor(s): ${context.watch<GameProvider>().game.players.length}',
          textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white,)),
              
          const SizedBox(height: 20),
        ],
      ),
    ));
  }

}