import 'package:flutter/material.dart';
import 'package:noise_battle/models/player.model.dart';

class WinnerPlayer extends StatefulWidget {
  final Player winner;
  const WinnerPlayer({super.key, required this.winner});

  @override
  State<WinnerPlayer> createState() => _WinnerPlayerState();
}

class _WinnerPlayerState extends State<WinnerPlayer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
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
                const SizedBox(height: 72),
                Text("🏆", style: TextStyle(fontSize: 100)),
                Text(widget.winner.name,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
                Text("${widget.winner.score.toStringAsFixed(2)} pts",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
                  
                        
              ],
            )));
  }
}
