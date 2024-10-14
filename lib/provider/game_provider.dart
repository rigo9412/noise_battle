// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:noise_battle/models/game.model.dart';
import 'package:noise_battle/models/game.status.enum.dart';
import 'package:noise_battle/models/player.model.dart';

const EVALUEATION_SECONDS = 5;

class GameProvider extends ChangeNotifier {
    Game game = Game();
    GameStatus status = GameStatus.paused;
    Player? currentPlayer;
    int currentPlayerIndex = -1;
    String? error;

    void setup() {
        game = Game();
        status = GameStatus.paused;
        currentPlayerIndex = -1;
            game.addPlayer(Player(0, 'Anonymous'));
            game.addPlayer(Player(1, 'Anonymous2'));
            game.addPlayer(Player(2, 'Anonymous3'));
            game.addPlayer(Player(4, 'Anonymous4'));
            game.addPlayer(Player(5, 'Anonymous5'));
            game.addPlayer(Player(6, 'Anonymous6'));


    }

     void setupGame() {
        status = GameStatus.paused;
        currentPlayerIndex = -1;
        if(game.players.isNotEmpty){
            for (var element in game.players) {
                element.score = 0;
            }
        }
        currentPlayer = game.players[0];

    }

    void startGame() {
        status = GameStatus.playing;
        if(game.players.isEmpty) {
            error = 'There are no players in the game';
        }
        else if (game.players.length < 2) {
            error = 'There are not enough players in the game';
        }
        else if (currentPlayerIndex  == game.players.length - 1) {
            error = 'There is no more players in the game';
            return;
        }


        currentPlayerIndex++;
        currentPlayer = game.players[currentPlayerIndex];

        notifyListeners();
    }

    Player? addPlayer(String name) {
 
        if(name.isEmpty) {
            error = 'Player name cannot be empty';
            notifyListeners();
            return null;
        }
        if(game.players.any((player) => player.name == name)) {
            error = 'Player with this name already exists';
            notifyListeners();
            return null;
        }

        int id = game.players.length + 1;
        var newPlayer = Player(id, name);
        game.addPlayer(newPlayer);
        notifyListeners();
        return newPlayer;
    }

    void removePlayer(int id) {
        game.removePlayer(id);
        notifyListeners();
    }

    void setNoiseLevel(int id, double score) {
        game.setNoiseLevel(id, score);
        notifyListeners();
    }

    Player getWinner() {
        return game.getWinner();
    }

    void setPlayerScore(double score) {
        currentPlayer?.score =  (currentPlayer?.score ?? 0) + score;
        notifyListeners();
    }

    void setFinished() {
        status = GameStatus.finished;
        notifyListeners();
    }

    bool isCompleted() {
        return game.players.length == currentPlayerIndex + 1;
    }


    void cleanError() {
        error = null;
        //notifyListeners();
    }
}