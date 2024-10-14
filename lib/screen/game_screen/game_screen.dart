import 'dart:async';
import 'package:flutter/material.dart';
import 'package:noise_battle/common/routes.dart';
import 'package:noise_battle/models/game.status.enum.dart';
import 'package:noise_battle/models/player.model.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/screen/game_screen/widgets/header_player.dart';
import 'package:noise_battle/widgets/action_button.dart';
import 'package:noise_battle/widgets/action_secondary_button.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'widgets/bar_indicator.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Timer? _timer;
  int _remainingSeconds;
 
  NoiseReading? _latestReading;
  StreamSubscription<NoiseReading>? _noiseSubscription;
  NoiseMeter? noiseMeter;
  GameProvider? _gameProvider;

  _GameScreenState({int startSeconds = EVALUEATION_SECONDS})
      : _remainingSeconds = startSeconds;

  @override
  void initState() {
    super.initState();
    _gameProvider = Provider.of<GameProvider>(context, listen: false);
    _gameProvider?.setupGame();
  }

  @override
  void dispose() {
    _noiseSubscription?.cancel();
    super.dispose();
  }

  void onData(NoiseReading noiseReading) =>
      setState(() => _latestReading = noiseReading);
  void onError(Object error) => stop();

  Future<bool> checkPermission() async => await Permission.microphone.isGranted;
  Future<void> requestPermission() async =>
      await Permission.microphone.request();

  Future<void> start() async {
    _gameProvider?.startGame();
    await _startRecording();
    _startCountdown();
  }

  Future<void> _startRecording() async {
    noiseMeter ??= NoiseMeter();
    if (!(await checkPermission())) await requestPermission();
    _noiseSubscription = noiseMeter?.noise.listen(onData, onError: onError);
   
  }

  void _startCountdown() {
    _remainingSeconds = EVALUEATION_SECONDS;
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (Timer timer) {
      if (_remainingSeconds <= 0) {
        stop();

      } else {
        setState(() {
          //_gameProvider?.setPlayerScore(30 + (_latestReading?.meanDecibel ?? 0) * .01);
          _gameProvider?.setPlayerScore(double.parse(((_latestReading?.meanDecibel ?? 0)).toStringAsFixed(2)));
          _remainingSeconds--;
        });
      }
    });
  }

  /// Stop sampling.
  void stop() {
    _noiseSubscription?.pause();
    setState(()  {
      _gameProvider?.setFinished();
   
      _timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          height:  MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 52),
          child:  SingleChildScrollView(
  child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderPlayer(
                  player: _gameProvider?.currentPlayer ??
                      Player(-1, 'Noise Battle 👏'),
                  time: _remainingSeconds,
                ),

                BarIndicator(
                    height: MediaQuery.of(context).size.height * .5,
                    width: MediaQuery.of(context).size.height * .2,
                    progress: (_latestReading?.meanDecibel ?? 0)),
                const SizedBox(height: 20),
                (_remainingSeconds == 5 || _remainingSeconds == 0) && _gameProvider?.isCompleted() == false
                    ? ActionButton(
                        title: _gameProvider?.status == GameStatus.paused
                            ? 'Start 👏'
                            : 'Continue to next 👏',
                        color: Theme.of(context).colorScheme.secondary,
                        textColor: Colors.black,
                        onPressed: () {
                          start();
                        })
                    : const SizedBox(height: 52),

                _gameProvider?.isCompleted() == true && _remainingSeconds == 0
                    ? ActionButton(
                        title:  "Get the winner 🏆",
                        color: Theme.of(context).colorScheme.secondary,
                        textColor: Colors.black,
                        onPressed: () {
                            Navigator.of(context)
                            .pushNamedAndRemoveUntil(Routes.winner, (Route<dynamic> route) => false);
                        })
                    : const SizedBox(height: 52),

                _gameProvider?.isCompleted() == true && _remainingSeconds == 0
                    ? ActionSecondaryButton(
                        title:  "Retry",
                        color: Theme.of(context).colorScheme.secondary,
                        textColor: Colors.white,
                        onPressed: () {
                          _gameProvider?.setupGame();
                          start();
                        })
                    : const SizedBox(height: 52),


              ]),
        )),
      );
}
