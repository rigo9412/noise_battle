import 'package:flutter/material.dart';
import 'package:noise_battle/common/routes.dart';
import 'package:noise_battle/screen/game_screen/game_screen.dart';
import 'package:noise_battle/screen/home_screen/home_screen.dart';
import 'package:noise_battle/screen/new_player_screen/new_player_screen.dart';
import 'package:noise_battle/screen/winner_screen/winner_screen.dart';
 
 

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return buildRoute(
          const HomeScreen(),
          settings: settings,
        );
      case Routes.game:
        return buildRoute(
          const GameScreen(),
          settings: settings,
        );
      case Routes.newPlayer:
        return buildRoute(
          const NewPlayerScreen(),
          settings: settings,
        );
      case Routes.winner:
        return buildRoute(
          const WinnerScreen(),
          settings: settings,
        );
 
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => child,
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}