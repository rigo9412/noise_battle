import 'package:flutter/material.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/screen/new_player_screen/widgets/header.dart';
import 'package:noise_battle/screen/new_player_screen/widgets/input_name.dart';
import 'package:noise_battle/widgets/action_button.dart';
import 'package:noise_battle/widgets/action_secondary_button.dart';
import 'package:noise_battle/widgets/base_screen.dart';
import 'package:provider/provider.dart';

class NewPlayerScreen extends StatefulWidget {
  const NewPlayerScreen({super.key});

  @override
  State<NewPlayerScreen> createState() => _NewPlayerScreenState();
}

class _NewPlayerScreenState extends State<NewPlayerScreen> with ErrorDisplayer {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  GameProvider? _gameProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _gameProvider = Provider.of<GameProvider>(context, listen: false);
    _gameProvider?.addListener(_listenForErrors);
  }

  @override
  void dispose() {
    _gameProvider?.removeListener(_listenForErrors);
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(builder: (context, gameProvider, child) {
      return ScaffoldMessenger(
          key: scaffoldKey,
          child: Scaffold(body: Builder(builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  InputName(controller: _controller),
                  ActionButton(
                      title: 'Add Competitor',
                      color: Colors.white,
                      textColor: Theme.of(context).colorScheme.primary,
                      onPressed: () {
                        var result = gameProvider.addPlayer(_controller.text);
                        if (result != null) {
                          Navigator.pop(context);
                        }
                      }),
                  const SizedBox(height: 8),
                  ActionSecondaryButton(
                      title: 'Cancel',
                      color: Theme.of(context).colorScheme.primary,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            );
          })));
    });
  }

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
