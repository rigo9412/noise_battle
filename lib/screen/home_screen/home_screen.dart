import 'package:flutter/material.dart';
import 'package:noise_battle/common/theme.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/screen/home_screen/widgets/action_control.dart';
import 'package:noise_battle/screen/home_screen/widgets/home_players.dart';
import 'package:noise_battle/widgets/base_screen.dart';
import 'package:provider/provider.dart';
import 'package:noise_battle/screen/home_screen/widgets/logo_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ErrorDisplayer {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  GameProvider? _gameProvider;
  @override
  void initState() {
    super.initState();
    _gameProvider = Provider.of<GameProvider>(context, listen: false);
    context.read<GameProvider>().setup();
  }

  @override
  void dispose() {
    _gameProvider?.removeListener(_listenForErrors);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _gameProvider?.addListener(_listenForErrors);
  }

  @override
  Widget build(BuildContext context) => ScaffoldMessenger(
        key: scaffoldKey,
        child: Scaffold(body: Builder(builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 52),
            decoration: BoxDecoration(
                gradient: RadialGradient(
              stops: [
                0.4,
                0.4,
                0.7,
                0.7,
                0.9,
                0.9,
              ],
              colors: [
                colorBackgroundRipple400,
                colorBackgroundRipple500,
                colorBackgroundRipple400,
                colorBackgroundRipple500,
                colorBackgroundRipple400,
                colorBackgroundRipple500,
              ],
            )),
            child:  SingleChildScrollView(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoTitle(),
                ActionControl(),
                HomePlayers(),
              ],
            ),
          ));
        })),
      );

  void _listenForErrors() {
    if (mounted) {
      final errorProvider = _gameProvider;
      if (errorProvider != null) {
        listenForErrors(scaffoldKey, context, errorProvider.error);
        errorProvider.cleanError();
      }
    }
  }
}
